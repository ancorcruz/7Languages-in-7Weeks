#!/usr/bin/env ruby

module ActsAsCsv
  def self.included(base)
    base.extend ClassMethods
  end

  module ClassMethods
    def acts_as_csv
      include InstanceMethods
    end
  end

  module InstanceMethods
    attr_reader :headers, :csv_contents

    def initialize
      read
    end

    def read
      @csv_contents = []
      filename = self.class.to_s.downcase + '.txt'

      File.open(filename) do |file|
        @headers = file.gets.chomp.split(', ')

        file.each do |row|
          @csv_contents << row.chomp.split(', ')
        end
      end
    end

    def each
      @csv_contents.each do |row|
        csv_row = CsvRow.new(headers, row)
        yield(csv_row)
      end
    end
  end

  class CsvRow
    def initialize(headers, row)
      @content = headers.zip(row).to_h
    end

    def method_missing(name, *args)
      @content.fetch(name.to_s)
    end
  end
end

class RubyCsv
  include ActsAsCsv
  acts_as_csv
end

csv = RubyCsv.new
puts csv.headers.inspect
puts csv.csv_contents.inspect

csv.each { |row| puts row.one }
