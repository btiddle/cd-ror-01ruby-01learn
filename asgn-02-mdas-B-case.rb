
def process ( first_number, second_number) 
    operator = rand(4)

    case operator
        when 0
            answer = first_number + second_number
            operator_str = "Additon"
            oper = "+"
        when 1
            answer = first_number - second_number
            operator_str = "Subtract"
            oper = "-"
        when 2
            answer = first_number * second_number
            operator_str = "Multiplication"
            oper = "*"
        else
            answer = first_number / second_number
            operator_str = "Division"
            oper = "/"
    end

    #puts("#{first_number} #{operator_str} #{second_number} is #{answer}")
    puts "The answer is #{answer} for #{first_number} #{oper} #{second_number}"
    puts "  Operation used is #{operator_str}"
    puts
end

process(4,8)
process(4,8)
process(4,8)
process(4,8)
