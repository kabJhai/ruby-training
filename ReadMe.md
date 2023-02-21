# Unless

Unless is the same as if not. If it is not this then do that

The purpose of unless statement is for simplicity
`
    cart = []

    if !cart.empty?
        puts cart[0]
    else
        puts "Cart is empty"
    end


    #The same code with unless

    unless cart.empty?
        puts cart[0]
    end

`

# Case statement

Case statement is the same as select statements
We can use boolean expressions to handle cases
`
    test_value
    case
    when value
        do something
    when test_value == value
        do something
    else
        final something
    end
`

#Loops

We can use loops to handle cases iteratively


Basic Loop statement

`

    i = 10
    loop do
        break if i < 1
        puts "Count is #{i}"
        i -= 1
    end
    puts "Count is #{i}"
`

## While Loop

`

    i = 10
    while i >= 1
        puts "Count is #{i}"
        i -= 1
    end
    puts "Count is #{i}"
`

## Until Loop


Until loop iterates through a collection or a sequence of elements
Does an operation until the condition is satisfied. In other words it works as while not or unless condition

`

    values = [1,2,3]
    until values.empty?
        value = values.shift
        puts value
    end
`

# Iterators

Multiple data types have different iterators defined for them

Example:
- Integer: times,upto,downto,step
- Range: each,step
- String: each_line,each_char,each_byte
- Array: each,each_index,each_with_index
- Hash: each,each_key,each_value,each_pair

## Times

It directly tells the code to execute the block multiple times of the given value.

` 

    5.times{ puts "Do something" }
    
    #Or

    5.times do |value|
        puts "Do something #{value}"
    end
`



## Up to

Does work given the initial and the final value

` 

    1.upto(5){ puts "Do something" }
    
    #Or
    1.upto(5) do |value|
        puts "Do something #{value}"
    end
`

## Down to

` 

    5.downto(1){ puts "Do something" }
    
    #Or
    5.downto(1) do |value|
        puts "Do something #{value}"
    end
`
  
## For each


` 

    (1..5).each{ puts "Do something" }
    
    #Or
    (1..5).each do |value|
        puts "Do something #{value}"
    end
`

## For in

The same property as for loop in python

    cars = ['ford', 'bmw', 'toyota']

    for i in cars
        puts i.capitalize
    end
