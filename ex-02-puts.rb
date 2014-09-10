
# Semicolons at end of line are optional
    x = 5
    y = 10
    z = x + y

    puts z

# Multiple statements on one line are separated by semicolons.
    a = 70; b = 7; c = a + b; puts c

# Creating and printing string variables with new lines
    first_name = "Sally"
    last_name = "Fable"

    puts "Her name is: "
    puts first_name
    puts last_name
    #or 
    puts "Her name is: ", first_name, last_name

# Inserting a variable string value inside a string 
# Single line separated by + eliminates printing of new line
    first_name = "Sam"
    last_name = "Smith"

    puts "His name is: " + first_name + " " + last_name
    #or
    puts "His first name is #{first_name} and his last name is #{last_name}"
    #or
    puts "His first name is %s and his last name is %s" % [first_name, last_name]

# Printing numeric value
    count = 50
    puts "Value of count is #{count}"
    # or
    puts "Value of count is %d" % [count]
    # or 
    puts "Value of count is %d" % count
    # or 
    puts "Value of count is %f" % count

# Printing special characters
    puts "\t\tI am \n 5'10\" tall"
    puts '\t\tI am \n 6\'2" tall'    # But \t and \n are printed as text
