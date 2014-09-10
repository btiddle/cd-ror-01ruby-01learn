#.chomp
#   With no arguments, chomp removes one DOS or Unix line ending, if either 
#   is present at end of line.
#
#   "abc\n".chomp      # => "abc"
#   "abc\r\n".chomp    # => "abc"
#
#   "Returns a new String with the given record separator removed from the end
#   of str (if present). If $/ has not been changed from the default Ruby 
#   record separator, then chomp also removes carriage return characters 
#   (that is it will remove \n, \r, and \r\n)."

    puts "hello".chomp            # => "hello"
    puts "hello\n".chomp          # => "hello"
    puts "hello\r\n".chomp        # => "hello"
    puts "hello\n\r".chomp        # => "hello\n"
    puts "hello\r".chomp          # => "hello"
    puts "hello \n there".chomp   # => "hello \n there"
    puts "hello".chomp("llo")     # => "he"

    # Remove the last n characters from a string (note 3 dots required)
    # str = str[0...-n]
    'now is the time'[0...-4]
    # => "now is the "

#.exit
#   Initiates the termination of the Ruby script by raising the SystemExit 
#   exception. This exception may be caught. The optional parameter is used
#   to return a status code to the invoking environment. true and FALSE of 
#   status means success and failure respectively. The interpretation of 
#   other integer values are system dependent.

    begin
      exit
      puts "never get here"
    rescue SystemExit
      puts "rescued a SystemExit exception"
    end
    puts "after begin block"
    # => rescued a SystemExit exception
    # => after begin block

# .sprintf
#   Returns the string resulting from applying format_string to any additional 
#   arguments. Within the format string, any characters other than format 
#   sequences are copied to the result.
#
#   The syntax of a format sequence is follows.
#
#    %[flags][width][.precision]type

    # `+' and space flag specifies the sign of non-negative numbers.
    puts sprintf("%d", 123)  # => "123"
    puts sprintf("%+d", 123) # => "+123"
    puts sprintf("% d", 123) # => " 123"    

# .rand
#   rand(max=0) → number click to toggle source
#   If called without an argument, or if max.to_i.abs == 0, rand 
#   returns a pseudo-random floating point number between 0.0 and 1.0, 
#   including 0.0 and excluding 1.0.

    puts srand 1234                 # => 132058051394754311033583929761838073010
    puts [ rand,  rand ]            # => [0.1915194503788923, 0.6221087710398319]
    puts [ rand(10), rand(1000) ]   # => [4, 664]
    puts srand 1234                 # => 1234
    puts [ rand,  rand ]            # => [0.1915194503788923, 0.6221087710398319]

# .sleep
#   Suspends the current thread for duration seconds (which may be any number, 
#   including a Float with fractional seconds). Returns the actual number of 
#   seconds slept (rounded), which may be less than that asked for if another 
#   thread calls Thread#run. Called without an argument, sleep() will sleep forever.

    puts Time.new    #=> 22014-05-26 12:57:44 -0700
    puts sleep 1.2   #=> 1
    puts Time.new    #=> 22014-05-26 12:57:45 -0700
    puts sleep 1.9   #=> 2
    puts Time.new    #=> 2014-05-26 12:57:47 -0700

