require './other/common'

execute_insertion_sort = lambda do |numbers|
    numbers_size = numbers.size
    (1...(numbers_size)).each do |i|
        compared_index = i - 1
        while compared_index >= 0 && numbers[i] < numbers[compared_index] do
            compared_index -= 1
        end

        target_number = numbers.delete_at(i)
        numbers.insert(compared_index + 1, target_number)
    end

    return numbers
end

execute(&execute_insertion_sort)