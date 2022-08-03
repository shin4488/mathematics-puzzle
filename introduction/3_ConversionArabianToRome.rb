def createRomanString(n, i, v, x)
    if n == 9
        return i + x
    elsif n == 4
        return i + v
    end

    div5, surplus = n.divmod(5)
    result = v * div5
    result += i * surplus
    return result
end

def convertrtAbianToRoman(n)
    m, n = n.divmod(1000)
    c, n = n.divmod(100)
    x, n = n.divmod(10)

    result = "M" * m
    result += createRomanString(c, "C", "D", "M")
    result += createRomanString(x, "X", "L", "C")
    result += createRomanString(n, "I", "V", "X")

    return result
end

count = Hash.new(0)
1.upto(3999) { |n|
    romanString = convertrtAbianToRoman(n)
    count[romanString.size] += 1
}

puts count[12]
