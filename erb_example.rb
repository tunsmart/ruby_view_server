require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

name = 'aPpLe'
erb_string = "<h2><%= name.capitalize %></h2>"

template = ERB.new(erb_string)
puts template.result(binding)

fruits = ["oranges", "apples", "avocado", "banana"]
template = ERB.new "My best fruit is: <%= fruits.each do |x|  puts x
                                          end %>"
puts template.result(binding)
