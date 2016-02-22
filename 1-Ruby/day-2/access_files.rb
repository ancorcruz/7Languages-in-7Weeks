#!/usr/bin/env ruby

file_name = 'example.txt'

# Open a file with a code block
File.open(file_name) do |file|
  file.each { |line| puts line }
end

# Open a file without a code block
file = File.open(file_name)
file.each { |line| puts line}
file.close

# When opening files with a code block, Ruby closes the file after finish the
# execution of the block while when no code block is provided you need to
# close the file explicitly, if you forget to do so, the file descriptor
# will stay in use and some memory will be wasted. It also is way more elegant
