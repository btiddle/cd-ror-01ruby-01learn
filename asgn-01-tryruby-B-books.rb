# Books example: Using hash key value 

    # Declare an empty hash called books
    books = {}

    # Book ratings
    #   :splendid → a masterpiece.
    #   :quite_good → enjoyed, sure, yes.
    #   :mediocre → equal parts great and terrible.
    #   :quite_not_good → notably bad.
    #   :abysmal → steaming wreck.

    # Initialize books
    books["Gravity's Rainbow"] = :splendid
    books["Cow's Path"] = :quite_good
    books["Dog chase the cat"] = :mediocre
    books["Long walk to somewhere"] = :abysmal
    books["Snakes travel to sand pile"] = :quite_not_good 
    books["The Hourse High Jump"] = :splendid

    # Length method works on strings, list and hashes. 
    # Query book length
    puts books.length 
    # => 6
    puts

    # Again, square brackets target and find things. Search and replace.
    # Query an individual book rating
    puts books["The Hourse High Jump"] 
    # => splendid
    puts

    # Print hash table's keys and values
     puts books 
     # => {"Gravity's Rainbow"=>:splendid, "Cow's Path"=>:quite_good, "Dog chase the cat"=>:mediocre, "Long walk to somewhere"=>:abysmal, "Snakes travel to sand pile"=>:quite_not_good, "The Hourse High Jump"=>:splendid}
     puts

     # print hash keys
     puts books.keys.join(", ") 
     # => Gravity's Rainbow, Cow's Path, Dog chase the cat, Long walk to somewhere, Snakes travel to sand pile, The Hourse High Jump
     puts

    # print hash values
    puts books.values.join(", ") 
    # => splendid, quite_good, mediocre, abysmal, quite_not_good, splendid
    puts

    # Count hash values
    ratings = Hash.new(0)
    books.values.each { |rate| ratings[rate] += 1 }
    puts ratings
    # => {:splendid=>2, :quite_good=>1, :mediocre=>1, :abysmal=>1, :quite_not_good=>1}
    puts

    # A block is a bit of Ruby code surrounded by curly braces.
    5.times { print "Odelay!" }
    puts

#   Hashes - The little dictionary with the curly pages: {}.

#   Symbols - Tiny, efficient code words with a colon: :splendid.

#   Blocks - Chunks of code which can be tacked on to many of Ruby's methods.

