#1 Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. Also have the function return an array that only include numbers that are greater than 10 (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject or find_all method)
#2 Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. Shuffle the array and print the name of each person. Have the program also return an array with names that are longer than 5 characters.
#3 Create an array that contains all 26 letters in the alphabet (this array must have 26 values). Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. If the first letter in the array is a vowel, have it display a message
#4 Generate an array with 10 random numbers between 55-100.
#5 Generate an array with 10 random numbers between 55-100 and have it be sorted (showing the smallest number in the beginning). Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.
#6 Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; use a map function and a range to do this).
#7 Generate an array with 10 random strings that are each 5 characters long

 

ary1 = [3,5,1,2,7,9,8,13,25,32]

def part1 array
	puts array.reduce(:+)
	return array.reject {|a| a < 11}
end

ary2 = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']

def part2 array
	array.shuffle.each {|name| puts name}
	return array.reject {|name| name.length < 5}
end

def part3
	letters = ('a'..'z').to_a.shuffle!
	puts letters.first, letters.last
	puts "first letter is a vowel!" if ['a','e', 'i', 'o', 'u'].include? letters.first
end

def part4_and_5
	ary = (1..10).map {|num| num = rand(55..100)}.sort
	puts "min is #{ary.min}, max is #{ary.max}"
	return ary
end

def part6
	return (1..5).map {|c| c = (65+rand(26)).chr}.join
end

def part7
	ary = Array.new
	10.times {|c| ary.push(part6)}
	return ary
end










