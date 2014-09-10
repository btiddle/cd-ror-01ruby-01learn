
#======================================================================
#   1.0 Create an array with the following values: 
#   3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. 
#   Also have the function return an array that only include numbers 
#   that are greater than 10 (E.g. when you pass the array above, it 
#   should return an array with the values of 13,25,32 - hint: use 
#   reject or find_all method)

#======================================================================
#   1.1 Print sum of all the number
#======================================================================
    array = [3,5,1,2,7,9,8,13,25,32]
    x = 0
    array.each {|value|  x += value}
    puts x
    # => 105

#======================================================================
#  1.2 Create function that returns an array that only includes
#  numbers that are grater than 10
#======================================================================
    x = array.reject { |item| item < 11}
    puts x.join(", ")
    # => 13, 25, 32

#======================================================================
#   2.0 Create an array with the following values: John, KB, Oliver, 
#   Cory, Matthew, Christopher. Shuffle the array and print the name of 
#   each person. Have the program also return an array with names that 
#   are longer than 5 characters.

#======================================================================
#   2.1 Shuffle array
#======================================================================
    arrayA = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
    print arrayA
    # => ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
    puts
    print  arrayA.shuffle
    # => random order
    puts

#======================================================================
#   2.2 Shuffle array and print names longer than 5 characters
#======================================================================
    arrayB = ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"]
    arrayB.shuffle.each {|x| print x + " " if x.length > 5}
    # => Matthew Oliver Christopher 
    puts

#======================================================================
#   3. Create an array that contains all 26 letters in the alphabet 
#   (this array must have 26 values). Shuffle the array and display the
#   last letter of the array. Have it also display the first letter of 
#   the array. If the first letter in the array is a vowel, have it 
#   display a message.
#======================================================================
    letters = []
    ("a".."z").each {|char| letters.push(char)}
    letters.shuffle!
    print letters
    puts
    puts "First letter is: " + letters.first
    puts "Last letter is : " + letters.last
    puts "First letter is a vowel." if ["a", "e", "i", "o", "u"].index(letters.first)

#======================================================================
#   4. Generate an array with 10 random numbers between 55-100.
#======================================================================
    rand_array = []
    10.times { rand_array.push(rand(55..100)) }
    puts "Array is:     " + rand_array.to_s
    
#======================================================================
#   5. Generate an array with 10 random numbers between 55-100 and have
#   it be sorted (showing the smallest number in the beginning). 
#   Display all the numbers in the arrays. Next, display the minimum 
#   value in the array as well as the maximum value.
#======================================================================
    rand_arrayB = []
    10.times { rand_arrayB.push(rand(55..100)) }
    rand_arrayB.sort!
    puts "Array is:     " + rand_arrayB.to_s
    puts "Min value is: " + rand_arrayB.min.to_s
    puts "Max value is: " + rand_arrayB.max.to_s

#======================================================================
#   6. Create a random string that is 5 characters long 
#   (hint: (65+rand(26)).chr returns a random character; use a map 
#   function and a range to do this).
#======================================================================
    # 5.times { |x| print (65+rand(26)).chr }
    # (1..5).map { |x| print (65+rand(26)).chr }
    x = (1..5).map { |x| (65+rand(26)).chr }
    print x.join

#=====================================================================
#   7. Generate an array with 10 random strings that are each 5 
#   characters long
#=====================================================================
    ran_str = []
    for outer_loop in (1..10) do
        temp_array = (1..5).map { |inner_loop| (65+rand(26)).chr }
        ran_str.push(temp_array.join)
    end
    print ran_str


