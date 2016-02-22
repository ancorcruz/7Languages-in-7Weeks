#!/usr/bin/env ruby

class Tree
  attr_accessor :children, :node_name

  def initialize(data={})
    @node_name = data.keys.first
    @children = data[@node_name].inject([]) { |memo, (k, v)|
      memo << Tree.new(k => v)
    }
  end

  def visit_all(&block)
    visit &block
    children.each { |c| c.visit_all &block }
  end

  def visit(&block)
    block.call self
  end
end

nested_hash = {
  'grandpa' => {
    'dad' => {
      'child 1' => {},
      'child 2' => {},
    },
    'uncle' => {
      'child 3' => {},
      'child 4' => {},
    }
  }
}

ruby_tree = Tree.new(nested_hash)
ruby_tree.visit_all { |node| puts node.node_name }
