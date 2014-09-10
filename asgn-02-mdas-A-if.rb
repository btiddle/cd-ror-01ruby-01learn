
def process ( first_number, second_number) 
    operator = rand(4)

    if operator === 0
        answer = first_number + second_number
        operator_str = "Additon"
    elsif operator === 1
        answer = first_number - second_number
        operator_str = "Subtract"
    elsif operator === 2
        answer = first_number * second_number
        operator_str = "Multiplication"
    else
        answer = first_number / second_number
        operator_str = "Division"
    end

    puts("#{first_number} #{operator_str} #{second_number} is #{answer}")
end

process(4,8)
process(4,8)
process(4,8)
process(4,8)

