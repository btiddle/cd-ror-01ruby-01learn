#!/usr/bin/ruby 

# example: block

def test01 
    puts "You are in the method tesst01" 
    yield 
    puts "You are again back to the method" 
    yield 
end 
test01 {puts "You are in the block"}

def test02
    puts "\nYou are in the method test02" 
    yield 5 
    yield 100 
end 
test02 {|i| puts "You are in the block #{i}"}

def square(num)
    puts "\nYou are in the method square" 
    puts "num is #{num}"
    x = yield(num)
    puts "x has a value of #{x}"
    y = yield(num) * x
    puts "y has a value of #{y}"
end
square(5) {|i| i * i }
