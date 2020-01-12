#write your code here

def add a, b
    a + b
end

def subtract a, b
    a - b
end

def sum numbers
    sum = 0
    if numbers.length < 1
        sum
    else
        numbers.each do |n|
            sum += n
        end
    end
    sum
end

def multiply a, *rest
    multiplication = a
    rest.each do |n|
        multiplication *= n
    end
    multiplication
end

def power a, b
    a**b
end

def factorial a
    factorial = 1 
    for i in 1...a+1 do
        factorial *= i
    end
    factorial
end