#!/usr/bin/ruby

=begin 

Class Student

1. Create a class Student that has the following attributes: @name, @dojo_location @belt_level

2. Create an instance of class Student and assign its attributes via the initialize function

3. Try to alter the values of your instance outside of the class-you should get an error

4. Create a getter and setter functions for the @dojo_location and @belt_level attributes and 
then alter those values outside of the class. 

5. Now, replace the getter and setter methods for @dojo_location and @belt_level with 
attr_accessor (note: you can add multiple attributes into the attr_accessor, just 
separate them with a comma). Look how much code you save!

=end

class Student
    attr_accessor :name, :dojo_location, :belt_level

    def info
        "Student:    #{@name}\n" + 
        "Location:   #{@dojo_location}\n" +
        "Belt Level: #{@belt_level}\n" 
    end
end

student = Student.new
student.name = "Betty Smith"
student.dojo_location = "Mountain View"
student.belt_level = "Black Belt"

puts student.info

#Student.name = "Joe Hendersion"



