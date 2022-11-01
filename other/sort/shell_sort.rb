require './other/common'

execute_shell_sort = lambda do |numbers|
    numbers_size = numbers.size
    # 探索幅の決定
    h = 1
    while h <= numbers_size / 9
        h = h * 3 + 1
    end

    # 探索幅を徐々に小さくする
    while h > 0
        # 一定間隔で挿入ソート
        (h...numbers_size).each do |i|
            j = i
            while j >= h && numbers[j] < numbers[j - h]
                numbers[j], numbers[j - h] = numbers[j - h], numbers[j]
                j -= h
            end
        end

        h /= 3
    end

    return numbers
end

execute(&execute_shell_sort)
