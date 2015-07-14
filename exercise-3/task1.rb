def sum_using_for numbers
    total = 0

    numbers.each { |i|
        total += i
    }

    total
end

def sum_using_while numbers
    i = 0
    total = 0

    while i < numbers.length
        total += numbers[i]
        i += 1
    end

    total
end

def sum_using_recursion numbers, index
    if index == 0
        0
    else
        numbers[index-1] + sum_using_recursion(numbers, index-1)
    end
end

numbers = [1, 2, 3]

puts sum_using_for numbers
puts sum_using_while numbers
puts sum_using_recursion numbers, numbers.length
