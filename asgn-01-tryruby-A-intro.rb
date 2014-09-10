# Math
    puts 2 + 6
    # => 8

    puts 4 * 10
    # => 40

    puts 5 - 12
    # => -7

    puts 40 / 4
    # => 10

# Strings
    puts "Benjamin"
    # => Benjamin

    puts "Benjamin".length
    # => 8

    puts "Benjamin".reverse
    # => nimajneB

    puts "Benjamin" * 5
    # => BenjaminBenjaminBenjaminBenjaminBenjamin

    # 40.reverse 
    # => (NoMethodError)

    puts 40.to_s.reverse

    # Methods used to convert between different types
    #   to_s converts things to strings.
    #   to_i converts things to integers (numbers.)
    #   to_a converts things to arrays.

# Arrays
    []
    [12, 47, 35]

    puts [12, 47, 35].max
    # => 47

    puts [12, 47, 35].min
    # => 12

    puts
    ticket = [12, 47, 35]

    puts ticket.join(", ")
    puts
    # => 12, 47, 35

    # sorts the array without changeing the array
    puts ticket.sort.join(", ")
    puts ticket.join(", ")
    puts
    # => 12, 35, 47
    # => 12, 47, 35

    # sorts the array and changes the array to new sort order
    puts ticket.sort!.join(", ")
    puts ticket.join(", ")
    puts
    # => 12, 35, 47
    # => 12, 35, 47

# More string information
    poem = "My toast has flown from my hand\nAnd my toast has gone to the moon.\nBut when I saw it on television,\nPlanting our flag on Halley's comet,\nMore still did I want to eat it"

    puts poem
    puts
    # => My toast has flown from my hand
    #    And my toast has gone to the moon.
    #    But when I saw it on television,
    #    Planting our flag on Halley's comet,
    #    More still did I want to eat it


    # Square brackets target and find things. Search and replace. 
    # Swap 'toast' with 'honeydew
    puts poem['toast'] = 'honeydew'
    puts
    # honeydew

    puts poem
    puts
    # => My honeydew has flown from my hand
    #    And my toast has gone to the moon.
    #    But when I saw it on television,
    #    Planting our flag on Halley's comet,
    #    More still did I want to eat it

    # Turn the whole poem backwards letter by letter
    puts poem.reverse
    puts
    # => ti tae ot tnaw I did llits eroM
    #    ,temoc s'yellaH no galf ruo gnitnalP
    #    ,noisivelet no ti was I nehw tuB
    #    .noom eht ot enog sah tsaot ym dnA
    #    dnah ym morf nwolf sah wedyenoh yM

    #  Reverse the lines: move the last line up to first and the first 
    #  line down to last. Turned the poem into a list using lines.to_a. 
    #  lines decides the way the string is split up, then to_a converted
    #  it into an Array. (To array.) Different methods, such as bytes 
    #  and chars can be used in place of lines. By using lines, ruby 
    #  will return each line of the poem. Then, you reversed that list. 
    #  You had each line. You reversed them. That's it.
    print poem.lines.to_a.reverse
    puts
    # => ["More still did I want to eat it", 
    #    "Planting our flag on Halley's comet,\n", 
    #    "But when I saw it on television,\n", 
    #    "And my toast has gone to the moon.\n", 
    #    "My honeydew has flown from my hand\n"]

    print poem.lines.to_a.reverse.join
    puts
    # => More still did I want to eat it
    #    Planting our flag on Halley's comet,
    #    But when I saw it on television,
    #    And my toast has gone to the moon.
    #    My honeydew has flown from my hand

    # Methods may have exclamations (and also question marks) in their name.
    puts poem.include? "my hand"


