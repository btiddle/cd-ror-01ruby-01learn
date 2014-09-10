
def process ()
    operator = rand(4)

    puts "Enter the first number"
    first_number = gets.chomp

    puts "Enter the second number"
    second_number = gets.chomp

    case operator
        when 0
            answer = first_number.to_i + second_number.to_i
            operator_str = "Additon"
            oper = "+"
        when 1
            answer = first_number.to_i - second_number.to_i
            operator_str = "Subtract"
            oper = "-"
        when 2
            answer = first_number.to_i * second_number.to_i
            operator_str = "Multiplication"
            oper = "*"
        else
            answer = first_number.to_i / second_number.to_i
            operator_str = "Division"
            oper = "/"
    end

    # puts "The #{operator_str} of #{first_number} with #{second_number} is #{answer}."
    puts("#{first_number} #{operator_str} #{second_number} is #{answer}")
    puts "The answer is #{answer} for #{first_number} #{oper} #{second_number}"
    puts "  Operation used is #{operator_str}"
end

process()
process()
process()
process()
