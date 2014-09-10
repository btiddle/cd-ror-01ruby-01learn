#!/usr/bin/ruby

# Same as asgn-07-ruby-math-dojo.rb

=begin 

MathDojo

HINT: To do this exercise, you will probably have to use 'return self'. If the
method returns itself (an instance of itself), we can chain methods.

1. Develop a ruby class called MathDojo that has the following functions: add, 
subtract. Have these 2 functions take at least 1 parameter. 
MathDojo.new.add(2).add(2, 5).subtract(3, 2).result should perform
0+2+(2+5)-(3+2) and return 4.

2. Modify MathDojo to take array as a parameter with as many value passed in 
the array as needed. (e.g. 
MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result 
should do 0+1+(3+5+7+8)+(2+4.3+1.25)-(2+3)-(1.1+2.3) and return its result.

=end

class MathDojo
    def initialize
        @value = 0
    end

    def get
        @value
    end

    def add (*args)
        for index1 in 0...args.length
            if args[index1].is_a?(Array)
                for index2 in 0...args[index1].length
                    add(args[index1][index2])
                end
            else
                @value += args[index1]
            end
        end
        self
    end

    def subtract (*args)
        for index1 in 0...args.length
            if args[index1].is_a?(Array)
                for index2 in 0...args[index1].length
                    subtract(args[index1][index2])
                end
            else
                @value -= args[index1]
            end
        end
        self
    end

end

puts MathDojo.new.add(2).add(2).add(5).subtract(3).subtract(2).get
# => 4

item2 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).get
puts item2
# => 4

puts MathDojo.new.add([2,2,5]).subtract([3, 2]).get
# => 4

puts MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).get
# => 23.15

puts MathDojo.new.add(1, [1,1], [[2,2], [2,2]], [[[ [3,3,3], [3,3,3], [3,3,3]], [3,3,3], [3,3,3], [3,3,3]], [3,3,3], [3,3,3], [3,3,3] ])
            .subtract(1, [1,1], [[2,2], [2,2]], [[[ [3,3,3], [3,3,3], [3,3,3]], [3,3,3], [3,3,3], [3,3,3]], [3,3,3], [3,3,3], [3,3,3] ]).get
# => 0
