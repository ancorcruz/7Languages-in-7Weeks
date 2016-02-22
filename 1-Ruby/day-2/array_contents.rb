#!/usr/bin/env ruby

array = (1..16).entries

count = 1

array.each do |a|
  print a

  (count % 4).zero? ? puts : print(', ')

  count += 1
end


array.each_slice(4) { |a| puts a.join(', ') }
