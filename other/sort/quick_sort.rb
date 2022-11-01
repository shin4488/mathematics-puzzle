require './other/common'

execute_quick_sort = lambda do |numbers|
    numbers_size = numbers.size
    sort_internally(numbers, 0, numbers_size - 1)
    return numbers
end

def sort_internally(numbers, edge_left, edge_right)
    if edge_left >= edge_right
        return
    end

    middle_index = (edge_left + edge_right) / 2
    middle_value = numbers[middle_index]
    left = edge_left
    right = edge_right

    while left < right
        while left < edge_right && numbers[left] < middle_value
            left += 1
        end

        if left >= right
            break
        end

        while right > edge_left && numbers[right] > middle_value
            right -= 1
        end

        if left >= right
            break
        end

        numbers[left], numbers[right] = numbers[right], numbers[left]
        left += 1
        right -= 1
    end

    sort_internally(numbers, edge_left, left - 1)
    sort_internally(numbers, right + 1, edge_right)
end

execute(&execute_quick_sort)
