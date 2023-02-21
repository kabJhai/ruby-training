#Unless

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

#Case statement

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