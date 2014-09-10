#!/usr/bin/ruby

=begin

Consider the following codes

a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Mikee", :last_name => "Buyco"}
e = {:first_name => "Diana", :last_name => "Manlulu"}
names = [a, b, c, d, e]
Create a ruby script that goes over each name in the names array and prints something like below.

You got 5 names in the 'names' array
The name is 'Michael Choi'
The name is 'John Supsupin'
The name is 'KB Tonel'
...

=end

a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Mikee", :last_name => "Buyco"}
e = {:first_name => "Diana", :last_name => "Manlulu"}
names = [a, b, c, d, e]

puts "You got #{names.length} names in the 'names' array"

names.each {|item| print "The name is '#{item[:first_name]} #{item[:last_name]}'\n"}
