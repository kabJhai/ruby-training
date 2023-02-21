#Symbos are strings that can be used as a label and can not be changed

# Symbols must all be lowercase and begin with a : . We have to use underscores to represent spaces.

# Symbols begin with a : and are not delitmitted with quotes

:student_id 

# We use symbols because they are not editable and it also allows ruby to better manage the computer memory

# Once a symbol is created ruby reuses it and it doesn't create another symbol on memory

# Even though the string "Testing" is the same it is actually created on memory each time
# But symbols are reused once used or created
puts "Testing".object_id
puts "Testing".object_id
puts "Testing".object_id

puts :test_symbol.object_id
puts :test_symbol.object_id
puts :test_symbol.object_id