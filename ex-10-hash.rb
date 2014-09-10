# hash example code

# key as string
    x = {"first_name" => "Coding", "last_name" => "Dojo"}
    puts x["first_name"], x["last_name"]
    puts "Your last name is Dojo" if x["first_name"].eql? "Dojo"

# key as symbol
    y = {:first_name => "Coding", :last_name => "Dojo"}
    puts "Y is " + y.to_s
    puts y[:first_name] + " " + y[:last_name]

# using .delete
    puts "DELETING :first_name"
    y.delete(:first_name)
    puts "Y is now " +  y.to_s

# accessing keys
    if y.has_key?(:first_name)
        puts "y has a key called :first_name"
    else
        puts "Y does not have a key called :first_name"
    end

    if y.has_value?("Dojo")
        puts "Y has a value called Dojo"
    else
        puts "Y does NOT have a value called Dojo"
    end
