#Experimenting with ranges

# If you want to declare ranges you have to a range in between values that can be represented as ranges like numbers and strings

# There are two types of ranges: 
#     Inclusive Range (It is declared with two '.'s)
#     Exclusive Range (It is declared with three '.'s)

inclusive_example = 1..100

exclusive_example = 1...100

# The exclusive range doesn't include the last element of the range

# You can find the first and the last elements with methods like begin,first,last and end.

# Mainly used with arrays and iterators.

# We can also explode ranges to declare arrays

the_array = [*inclusive_example]
puts the_array
