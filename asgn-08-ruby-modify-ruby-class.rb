#!/usr/bin/ruby

=begin 

Modifying existing Ruby Class by adding new methods

=end


class Fixnum

    # To class 'Fixnum' add method 'double'.
    def double
        self * 2
    end

    # To class 'Fixnum' add method 'prev'.
    # The method returns the previous number assigned to itself. For example,
    # doing 4.prev would return 3. 4.prev.prev should return 2. 
    def next
        self + 1
    end

    # To class 'Fixnum' add method 'prev'.
    # The method returns the previous number assigned to itself. For example,
    # doing 4.prev would return 3. 4.prev.prev should return 2. 
    def prev
        self - 1
    end

    # To class 'Fixnum' add method 'skip'.
    # The method will skip one number ahead of the current number. For example 
    # calling 3.skip would return 5.  
    def skip
        self + 2
    end

end

print  2.double, " ", 4.double, " ", 4.double.double, "\n"
# => 4 8 16

print  2.next, " ", 4.next, " ", 4.next.next, "\n"
# => 3 5 6

print  2.prev, " ", 4.prev, " ", 4.prev.prev, "\n"
# => 1 3 2

print  2.skip, " ", 4.skip, " ", 4.skip.skip, "\n"
# => 4 6 8

class String

    # To class 'String' add method 'reverse_original' and reverse_original!'
    # Add a new method called 'reverse_original' within Ruby class String that
    # reverses a string without using the reverse method. Doing 
    # "abcdefg".reverse_original should return "gfedcba". Create a new method 
    # called 'reverse_original!' within the same class that changes the 
    # original string and returns true after successfully changing the string. 
    # For example if x = "abcdefg", after calling x.reverse_original!, x 
    # should now be "gfedcba". Do this without creating a temporary array. Now
    # run the following codes: x = "Dojo"; y=x; z=x; x.reverse_original!; 
    # puts y,z,x; Why did this change the values for both y and z? This is 
    # because y and z were also referencing the same String object that was 
    # originally stored in variable x. Whenever you're changing the string 
    # value directly, it could affect other variables that were assigned 
    # from that variable. Therefore use methods with ! with caution.

    def reverse_original
        temp = ""

        (self.length - 1).downto(0) {|index| 
            #print "index: ", index, " - ", self[index], "\n"
            temp += self[index]
        }
        temp
    end

    def reverse_original!
        front_end = 0
        back_end = self.length - 1
        middle = back_end / 2
        temp = ""

        for index in (0..middle) do
            #print front_end, " ", middle, " ", back_end, "\n"
            temp = self[front_end]
            self[front_end] = self[back_end]
            self[back_end] = temp
            front_end += 1
            back_end -= 1
            #print self, "\n"
        end
        true
    end

end

puts "a".reverse_original 
puts "ab".reverse_original 
puts "abc".reverse_original 
puts "abcdefg".reverse_original 
puts "abcdefgh".reverse_original 

x = "abcdefghi"
print x.reverse_original, " - ", x, "\n"

x = "Dojo";
y = x;
z = x;
print x.reverse_original!, " ", x, " ", y, " ", z, "\n"
puts

class Array
    # http://www.reactive.io/tips/2008/12/21/understanding-ruby-blocks-procs-and-lambdas/

    # To class 'Array' add method 'iterate'.
    # Add a new method called 'iterate' in the Ruby class Array that goes 
    # through each value in the Array and replaces each value with 
    # whatever was passed through the block. For example for x = [1,3,5] 
    # running x.iterate { |i| i * 5 } would return [5, 15, 25] while x is 
    # unchanged. 

    def iterate
        value = []
        self.each_with_index do |item, index|
            value[index] = yield(item)
        end
        value
    end

    def iterate!
        self.each_with_index do |item, index|
            self[index] = yield(item)
        end
    end

    # To class 'Array' add method 'filter' and  'filter!'
    # Add a new method called 'filter' in the Ruby class Array that goes 
    # through each value in the Array and filters any value in the array
    # that's not meeting the requirement set in the block. For example for
    # x = [1, 10, 25], running x.filter { |i| i < 15 } would return [25]
    # while x is left unchanged. In other words with the previous example
    # it's filtering any value in the array x where each value is less than
    # 15. Similarly, create another method called 'filter!' that returns
    # [25] in the previous example but would now change x to also be [25].

    def filter
        value = []
        self.each_with_index do |item, index|
            value.push(item) if not yield(item)
        end
        value
    end

    def filter!
        value = []
        self.each_with_index do |item, index|
            value.insert(0, index) if yield(item)
        end
        value.collect { |x| self.delete_at(x)}
        self
    end


end

x = [1, 3, 5]
print x, "\n"
# => [1, 3, 5]
print x.iterate { |i| i * 5 }, ", ", x, "\n"
# => [5, 15, 25], [1, 3, 5]
puts


x = [1, 3, 5]
print x, "\n"
# => [1, 3, 5]
print x.iterate! { |i| i * 5 }, ", ", x, "\n"
# => [5, 15, 25], [5, 15, 25]
puts


x = [1, 10, 25]
print x, "\n"
# => [1, 10, 25]
print x.filter { |i| i < 15 }, ", ", x, "\n"
# => [25], [1, 10, 25]
puts


x = [1, 10, 25]
print x, "\n"
# => [1, 10, 25]
print x.filter! { |i| i < 15 }, ", ", x, "\n"
# => [25], [1, 10, 25]
puts


x = [1, 15, 2, 16, 3, 17, 4, 18, 5, 19]
print x, "\n"
# => 1, 15, 2, 16, 3, 17, 4, 18, 5, 19]
print x.filter! { |i| i < 15 }, ", ", x, "\n"


# => [15, 16, 17, 18, 19], [15, 16, 17, 18, 19]
puts

class Hash

    # Add a new method called 'foreach' in the Ruby class Hash where you can
    # pass a block. Your method should pass both the key and the value to the
    # block. This method should go through each element in the Hash and do
    # whatever is passed by the block. For example say that
    # h = { :name => 'Dojo', :zip code => 94043}. Calling 
    # h.foreach{ |key, value| puts "#{key} is #{value}" } should print out
    # "name is Dojo" as well as "zip code is 94043". Note that Ruby already has
    # an identical method to this new method you created. It's called .each 
    # method and is one of the most used methods in Ruby. We still wanted you to
    # do this exercise to 1) help you learn how to use blocks as well as methods
    # to handle these blocks and 2) also to know that all the Ruby methods are
    # pre-defined methods that you should also be able to code with basic for
    # loops, if/else statements, and now with blocks!

    def foreach
        (0...self.length).each { |index| yield(self.keys[index], self.values[index]) }
    end

end

h = { :name => 'Dojo', :zip_code => 94043 }
puts h
# => {:name=>"Dojo", :zip_code=>94043}
h.each{ |key, value|  print "#{key} is #{value}, " } 
# => name is Dojo, zip_code is 94043 
puts
puts

h = { :name => 'Dojo', :zip_code => 94043 }
puts h
# => {:name=>"Dojo", :zip_code=>94043}
h.foreach{ |key, value|  print "#{key} is #{value}, " } 
# => name is Dojo, zip_code is 94043 
puts


