require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

name = 'aPpLe'
erb_string = "<h2><%= name.capitalize %></h2>"

template = ERB.new(erb_string)
puts template.result(binding)

template = ERB.new "<% ['oranges', 'apples', 'avocado', 'banana'].each do |x| %>
                     <%= puts My best fruits is : x %>
                     <% end %>"
puts template.result(binding)
