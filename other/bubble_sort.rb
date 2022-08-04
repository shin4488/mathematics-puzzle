require './other/common'

execute_bubble_sort = lambda do |numbers|
    numbers_size = numbers.size
    numbers_size.times do |i|
        compare_times = numbers_size - i
        (compare_times - 1).times do |j|
            if numbers[j] > numbers[j + 1]
                numbers[j], numbers[j + 1] = numbers[j + 1], numbers[j]
            end
        end
    end

    return numbers
end

execute(&execute_bubble_sort)