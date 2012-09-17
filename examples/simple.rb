require 'console-text-formatter'

# example of data
data = [
  {
    'id' => 1,
    'name' => 'First record'
  },
  {
    'id' => 2,
    'name' => 'Seeeeeeeeeecond record'
  }
]

# format and print data
ConsoleTextFormatter.format(data, %w(id name))

=begin

=============================
 id | name                   
-----------------------------
 1  | First record           
 2  | Seeeeeeeeeecond record 
=============================

=end