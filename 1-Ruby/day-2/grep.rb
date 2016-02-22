#!/usr/bin/env ruby

class Grep
  def initialize(file_name)
    @file_name = file_name
  end

  def self.match(file_name, phrase)
    new(file_name).match(phrase)
  end

  def match(phrase)
    File.open(@file_name) do |file|
      file.each { |line| puts "#{file.lineno}: #{line}" if line[phrase] }
    end

    nil
  end
end


puts Grep.match("ruby.txt", "language")
