# Cmd-B executes Ruby in Sublime
# Limitation is not able to execute input commands

# Pound sign start a comment thru end of line. 

# =begin/=end is another type of comment
=begin
	comment line 1
	comment line 2
	comment line 3
=end


# puts includes a new line in output
    puts "hello"
    puts "coding"
    puts "Dojo"


# print does not include a new line 
    print "hello"
    print "Coding"


# executes before all the other statements
# this is RARELY used in the Ruby community
    BEGIN {
    	puts "this is in the begin block"
    }

# executes after all the other statements
# this is RARELY used in the Ruby community
    END {
    	puts
    	puts "this is in the end block"
    }
