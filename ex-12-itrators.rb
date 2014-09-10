        value.collect { |x| self.delete_at }
#!/usr/bin/ruby 

# example: iterators (a.k.a. Enumerable)

# using .any 
    result = %w[ant bear cat].any? { |word| word.length >= 3 }
    puts result
    #=> true

    result = %w[ant bear cat].any? { |word| word.length >= 4 }
    puts result
    #=> true

    result = [nil, true, 99].any?
    puts result
    #=> true

# using .each
    ["ant", "bear", "cat"].each {|word| print word, "--"}
    #=> ant--bear--cat--

# using .collect/.map
    puts
    print (1..4).collect {|i| i * i}
    #=> [1, 4, 9, 16]
    puts
    print (1..4).collect { "cat" }
    #=> ["cat", "cat", "cat", "cat"]
    puts
    a = [ "a", "b", "c", "d" ]
    print a.collect! {|x| x + ":" + x}
    # => ["a:a", "b:b", "c:c", "d:d"]
    puts
    a = [ "aaaaa", "bbbbb", "ccccc", "ddddd" ]
    print a.collect! {|x| x + "!"}
    # => ["aaaaa!", "bbbbb!", "ccccc!", "ddddd!"]
    puts
    print a.collect!.with_index {|x, i| x[0...i] }
    # => ["", "b", "cc", "ddd"]
    puts

    puts
    print (1..4).map {|i| i*i}
    #=> [1, 4, 9, 16]
    puts
    print (1..4).map { "cat" }
    #=> ["cat", "cat", "cat", "cat"]
    puts
    a = [ "a", "b", "c", "d" ]
    print  a.map! {|x| x + "-" + x}
    # => ["a-a", "b-b", "c-c", "d-d"]
    puts
    a = [ "aaaaa", "bbbbb", "ccccc", "ddddd" ]
    print a.map! {|x| x + "!"}
    # => "aaaaa!", "bbbbb!", "ccccc!", "ddddd!"]
    puts
    print a.map!.with_index {|x, i| x[0...i] }
    # => ["", "b", "cc", "ddd"]
    puts

# using .detect/.find
    puts 
    print (1..35).detect { |i| i %5 == 0 and i % 7 == 0 }
    #=> 35
    puts 
    print (1..70).detect { |i| i %7 == 0 and i % 70 == 0 }
    #=> 70

    puts 
    print (1..35).find { |i| i %5 == 0 and i % 7 == 0 }
    #=> 35
    puts 
    print (1..70).find { |i| i %7 == 0 and i % 70 == 0 }
    #=> 70

# using .find_all/.select
    puts
    print (1..10).find_all { |i| i % 3 == 0 }
    #=> [3, 6, 9]

    puts
    print (1..10).select { |i| i % 3 == 0 }
    #=> [3, 6, 9]

# using .reject
    puts
    print (1..10).reject { |i| i % 3 == 0 }
    #=> [1, 2, 4, 5, 7, 8, 10]
    puts

# using .upto(limit)
    puts
    5.upto(10) { |i| print i, " " }
    puts
    #=> 5 6 7 8 9 10

# Remove the last n characters from a string (note 3 dots required)
    # str = str[0...-n]
    'now is the time'[0...-4]
    # => "now is the "
    puts

# using .each_with_index
    hash = Hash.new
    %w(cat dog wombat).each_with_index { |item, index|
      hash[item] = index
    }
    print hash   
    #=> {"cat"=>0, "dog"=>1, "wombat"=>2}
    puts

# using .each_with_index
    b = ["cat", "dog", "wombat", "mouse"]
    print b
    # => ["cat", "dog", "wombat", "mouse"]
    puts
    print b.collect.each_with_index { |item, index| item[0..index] }
    #=> "c", "do", "wom", "mous"]
    puts
    print b.collect.each_with_index { |item, index| item[0...index] }
    # => ["", "d", "wo", "mou"]
    puts

# usig .has_key?(key) -> true or false

# using .has_value?(value) -> true or false

# using .key(value) -> returns the key of an occurrence of a given value. If the value is not found, returns nil

# using .keys -> returns a new array populated with the keys from the hash



