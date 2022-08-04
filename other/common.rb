require 'benchmark'

$DATA_SIZE = 4
$TIMES_TO_LOOP = 10 ** $DATA_SIZE

def get_random_numbers()
    numbers = []
    $TIMES_TO_LOOP.times do
        number = rand(1...($TIMES_TO_LOOP + 1))
        numbers.push(number)
    end

    return numbers
end

def print_by_join(elements)
    joinedItem = elements.join(', ')
    puts joinedItem
end

def execute(&action)
    random_numbers = get_random_numbers()
    if $DATA_SIZE <= 2
        puts 'before'
        print_by_join(random_numbers)
    end

    ordered_numbers = []
    total_process_time = Benchmark.realtime do
        ordered_numbers = action.call(random_numbers)
    end

    if $DATA_SIZE <= 2
        puts 'after'
        print_by_join(ordered_numbers)
    end
    puts "#{total_process_time}s"
end
