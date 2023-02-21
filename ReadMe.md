# Ruby Basics


# Unless

Unless is the same as if not. If it is not this then do that

The purpose of unless statement is for simplicity
 
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

 

# Case statement

Case statement is the same as select statements
We can use boolean expressions to handle cases
 
    test_value
    case
    when value
        do something
    when test_value == value
        do something
    else
        final something
    end
 

#Loops

We can use loops to handle cases iteratively


Basic Loop statement

 

    i = 10
    loop do
        break if i < 1
        puts "Count is #{i}"
        i -= 1
    end
    puts "Count is #{i}"
 

## While Loop

 

    i = 10
    while i >= 1
        puts "Count is #{i}"
        i -= 1
    end
    puts "Count is #{i}"
 

## Until Loop


Until loop iterates through a collection or a sequence of elements
Does an operation until the condition is satisfied. In other words it works as while not or unless condition

 

    values = [1,2,3]
    until values.empty?
        value = values.shift
        puts value
    end
 

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

  

    5.times{ puts "Do something" }
    
    #Or

    5.times do |value|
        puts "Do something #{value}"
    end
 



## Up to

Does work given the initial and the final value

  

    1.upto(5){ puts "Do something" }
    
    #Or
    1.upto(5) do |value|
        puts "Do something #{value}"
    end
 

## Down to

  

    5.downto(1){ puts "Do something" }
    
    #Or
    5.downto(1) do |value|
        puts "Do something #{value}"
    end
 
  
## For each


  

    (1..5).each{ puts "Do something" }
    
    #Or
    (1..5).each do |value|
        puts "Do something #{value}"
    end
 

## For in

The same property as for loop in python

    cars = ['ford', 'bmw', 'toyota']

    for i in cars
        puts i.capitalize
    end

# I/O

## gets 
    - Used for getting a value from user input
## puts / print
    - Both used for displaying a value on console
    - Puts: adds a newline at the end automatically
    - Print: prints the value as it is without newline

# Find Methods

Useful for iterating over a range or an arrar and find a value that satisfies the condition

    #Check if the value exists
    (1..10).find{ |n|  n== 8}    

    #Find values that are even
    (1..10).find{ |n|  n%2 == 0}

    #To get all the values that satisfy the condition
    (1..10).find_all{ |n|  n%2 == 0}

    #Delete if the value satisfies the condition
    array = [*(1..10)]
    array.delete_if{ |value| value % 2 == 0 }

    #Check if any element satisfies the condition
    array.any?{ |value| value % 2 == 0 }

     #Check if all of the elements satisfy the condition
    array.all?{ |value| value % 2 == 0 } 

     #Check if none of the elements satisfy the condition
    array.all?{ |value| value % 2 == 0 }   


# Maps / Collect

Perform an operation on elements of an array and map it to an array

    x = [*(1..10)]
    y = x.map{ |value| value**2}

    #or

    y = x.map do |value|
        value ** 2
    end
    #If you want to change the origional array

    x.map!{ |value| value**2 }

    #Square the even elements only

    y = x.map do |value|
        if value % 2 == 0
            value**2
        else
            value
        end
    end

# Inject / Reduce Methods

Inject method has an accumulator value that we call memo
It stores the result of the previous operation and you can access it on the next iteration

For example:

    #The code below is used to find the maximum value of the array it uses the memo variable to handle the comparison
    result = [12,556,23,68,21,67].inject do |memo, value|
        if value > memo
            value
        else
            memo
        end
    end

    puts "The maximum value is #{result}"


    #The code below is used to sum the values of the array

    sum = (1..10).inject do |memo, value|
        memo + value
    end
    puts "The sum is #{sum}"


# Comparison operator

The comparison operator is <strong> <=> </strong>

The comparison operator returns:
     -1 if the value on the left is less than the value on right
     1 if the value on the right is greater than the value on the left
     0 if the value on the right is equal to the value on the left

We can use the defualt sort method to sort an array. We can also customize the sort method by using the comparison operator

    array = [2,67,246,388,32,32,7,9,95,31,4,1]

    #This sorts it in ascending order
    new_array = array.sort {|a, b| a <=> b}

    #This sorts it in descending order
    new_array = array.sort {|a, b| b <=> a}

We can also sort arrays containing other objects other than numbers by customizing the sort method

# Merge Method

Merge is only used for Hashes
If two hash tables contain the same key, the value of the second hash table will replace the value of the first
We can customize the merge method and handle when a key conflict occurs and perform another operation.

    h1 = {:a => 1, :b => 2, :c => 3}
    h2 = {:a => 10, :b => 9, :d => 3}

    #This merges h1 and h2. If key conflict occurs values of h2 will replace the value of h1.
    h1.merge(h2)

    #This merges h1 and h2. If key conflict occurs values the old value or the value on h1 will be used.
    h1.merge(h2) {|key,old,new| old}

    #We can also perform another operation every time a key conflict occurs
    #The code below multiplies the old value with the new value and store it when a key conflict occurs
    h1.merge(h2) {|key,old,new| old * new}

# Variable Scope

Variables are defined differently depending on the scope
    <table>
        <tr><td>Global Variable</td><td>$variable</td><tr>
        <tr><td>Class Variable</td><td>@@variable</td><tr>
        <tr><td>Instance Variable</td><td>@variable</td><tr>
        <tr><td>Local Variable</td><td>variable</td><tr>
        <tr><td>Block Variable</td><td>variable</td><tr>
    </table>

# Class

Classes are defined by using the class keyword and follow the CamelCase naming convention

    class MyClass

    end

For example

    #The code below defines an animal class with an instant variable node and methods to access it
    class Animal

        def make_noise
            @noise
        end

        def set_noise(value)
            @noise = value
        end
    end

    #In another file we can access the class instance and perform some operations

    cat =  Animal.new
    cat.set_noise("Meow!")
    puts cat.make_noise

## Readers and Writers [ Setters and Getters ]

In Ruby the setter and getter methods have the same name as the instance variable

For example: To make a setter and getter methods for the instance variable noise we write the following code

    
    #The code below defines an animal class with an instant variable node and methods to access it
    class Animal

        def noise
            @noise
        end

        def noise=(value)
            @noise = value
        end
    end

    cat =  Animal.new
    cat.noise = "Meow!"
    puts cat.noise

# Attribute Methods

We can have attribute reader, writer and accessor methods
We use attr_reader, attr_writer and attr_accessor to declare attribute methods
## attr_reader
    attr_reader :noise 

is the same as

    def noise
        @noise
    end


## attr_writer

    attr_writer :noise 

is the same as

    def noise=(value)
        @noise = value
    end
## attr_accessor
attr_accessor :noise is the same as defining the attribute methods for reading and writing on the attribute noise

    def noise
        @noise
    end

    def noise=(value)
        @noise = value
    end

We can customize the reader and writer methods by defining it directly rather than using attributes

# MAC (Method Access Control)

There are three access controll levels
- public: anyone can access the method
- protected: only called by the instance of the class and the subclass
- private: only called by the instance of the class

To define access methods we need to use the keywords `public`, `protected`, and `private` before defining the method


# Constructor

The `initialize` method is the constructor of the class

    class  Animal
        attr_accessor :noise
        attr_accessor :color

        def initialize(noise, color)
            @noise = noise
            @color = color
        end
    end

    cow = Animal.new("Moo","White")
    puts cow.noise
    puts cow.color

# Importing Classes

To import modules or classes from different locations use `require_relative path`


# Class Methods

Class methods are used to define instances as a factory method or access values with out an instance of the class 
Class methods are defined by adding `self.` before the method name

    class  Animal
        @@animals_list = ['cat', 'dog','cow', 'ox']
        attr_accessor :noise
        attr_accessor :color

        def initialize(noise, color)
            @noise = noise
            @color = color
        end

        def self.animals
            animals_list
        end

        def self.create_cat
            Animal.new("meow","gray")
        end
    end

    puts Animal.animals

    cat = Animal.create_cat
    puts cat.noise
    puts cat.color

# Inheritance

To inherit classes you need to use `<` in beween your class declaration and the parent class


    class  Animal
        attr_accessor :noise
        attr_accessor :color

        def initialize(noise, color)
            @noise = noise
            @color = color
        end
    end

    class Cat < Animal
        def initialize
            @noise = "Meow"
            @color = "Stripes"
        end
    end

    cat = Cat.new
    puts cat.noise
    puts cat.color

To modify a method and call the method in the parent class or to just call the method in the parent class we use `super` keyword.


    class  Doctor
        def perform_surgery
            puts "Perform Surgery"
        end
    end

    class JuniorDoctor < Doctor
        def perform_surgery
            puts "Ask support from the Senior Doctor"
            puts "Pray a lot"
            super
            puts "Be relieved"
        end
    end

    doc = JuniorDoctor.new
    doc.perform_surgery


# Modules

## Namespaces

Create namespaces to prevent conflict with Ruby classes or your classes that may have the same name

To namespace a class add it inside a module

    module AnimalModule
        class  Animal
            attr_accessor :noise
            attr_accessor :color

            def initialize(noise, color)
                @noise = noise
                @color = color
            end
        end
    end

## Mixins

Mixins allow us to utilize a single set of behaviors from different classes
We use the keyword `include` to include the behavior of a module inside our class

    Class Inheritance is used to modify or extend a behavior or a another class while Mix-ins are used to utilize the behaviours defined already in a module.

    In the following example student and teacher classes both contain the behaviours defined inside the InformationModule.

    module InformationModule
        attr_accessor :full_name, :address

        def full_info
            "#{full_name} - ${address}"
        end
    end

    class Student
        include InformationModule
    end

    class Teacher
        include InformationModule
    end

## Load, Require and Include
-  load: is used to load a file and it doesn't keep track of loaded files.
- require: is used to load a file from the default location `$LOAD_PATH`. It keeps track of the loaded file and loads it only once. It returns boolean value indicating whether the file was loaded successfully.
- require_relative: is used to load a file from the current directory.
- include: is used to include modules into a class not file.


# Exception Handling

In Ruby you can handle an exception by using the `rescue` keyword.

    def divide(x,y)
        x / y
    end
    begin
        divide(2,0)
        divide(4,"2")
        divide(1)
    rescue ZeroDivisionError  
        puts "ZeroDivisionError"
    rescue TypeError, ArgumentError
        puts "Your arguments are invalid"
    end


