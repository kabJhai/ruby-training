#Unless

Unless is the same as if not. If it is not this then do that

The purpose of unless statement is for simplicity
`Ruby
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

`Ruby
    case test_value
    when value
        do something
    when value
        do something
    else
        final something
    end
`


