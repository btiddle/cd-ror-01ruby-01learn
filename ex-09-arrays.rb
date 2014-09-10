# Array creation
    a = ["Matz", "Gjido", "Dojo", "Choi", "John"]
    #or
    a = %w{Matz Gjidov Dojo Choi John} # An alternate way of declaring the array

    b = [5, 9, 3, 1, 2, 4, 7, 8, 10]
    c = ["Dojo", 9]

# returns the first value or the second index of the array
    puts a[0]
    puts a[1]

# Array addition
    x = a + b
    puts x

# puts a.to_s
    puts x.to_s

# array substraction
    x = a + b - c
    puts x.to_s

# identifying class
    puts "The class of b is: #{b.class}"

#using shuffle
    puts a.shuffle.join("-")
    puts a.shuffle.join(", ")

#using .delete
    puts a.join(" ")
    a.delete("John")
    puts a.join(" ")

#using .length
    puts "Length of a is: #{a.length}"

#using .fetch
    h = [ 11, 22, 33, 44 ]
    puts "New h array is: " + h.join(", ")
    puts "Fetch index[1] is 22: " + h.fetch(1).to_s
    puts "Fetch index[-1] is 44: " + h.fetch(-1).to_s
    puts "Fetch index[4, 'cat'] is cat: " + h.fetch(4, 'cat').to_s
    puts "Fetch index[100] is out of bounds: "; h.fetch(100) { |i| puts " #{i} is out of bounds" }
   
#using .push
    i = [ "a", "b", "c" ]
    puts "New array is a..c: " + i.join(", ")
    i.push("d", "e", "f")
    puts "After i.push('d', 'e', 'f') array is a..f: " + i.join(", ")

#using .pop
    j = [ "a", "b", "c", "d" ]
    puts "New array j is a..d: " + j.join(", ")
    puts "j.pop is d: " + j.pop.to_s
    puts "j.pop(2) is b..c: " + j.pop(2).to_s
    puts "j is a: " + j.to_s

#using .reverse
    puts "[ 'a', 'b', 'c' ].reverse: " + [ "a", "b", "c" ].reverse.to_s
    puts "[ 1 ].reverse is: " + [ 1 ].reverse.to_s

#using .sort

#using .slice

#using .insert

# values_at() -> returns an array with values specified in the param
# e.g. a = %w{cat dog bear}; puts a.values_at(1,2).join(' and ') #=> "dog and bear"

