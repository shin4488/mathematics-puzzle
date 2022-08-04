require './other/common'

execute_selection_sort = lambda do |numbers|
    numbers_size = numbers.size
    numbers_size.times do |i|
        compare_times = numbers_size - i
        maximum_value_index = 0
        compare_times.times do |j|
            if numbers[j] > numbers[maximum_value_index]
                maximum_value_index = j
            end
        end

        changed_target_index = compare_times - 1
        numbers[maximum_value_index], numbers[changed_target_index] = numbers[changed_target_index], numbers[maximum_value_index]
    end

    return numbers
end

execute(&execute_selection_sort)
