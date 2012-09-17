# ConsoleTextFormatter

Simple console text formatter for ruby, with ability to print data hash to console

## Why?

I didn't find other alternatives for handy print out data to console in table format.

So, now it's pretty easy :)

## Install:

``` sh
$ gem install console-text-formatter
```

## Usage Example:

``` rb
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
```

It will prints:

``` sh
=============================
 id | name                   
-----------------------------
 1  | First record           
 2  | Seeeeeeeeeecond record 
=============================
```

## Author

cjfinc, you can follow me on twitter [@cjf_inc](http://twitter.com/cjf_inc) or take a look at github page [cjfinc@github](https://github.com/cjfinc)

## Copyright

Copyright (C) 2011 Evgenij Novosilskij - [@cjf_inc](http://twitter.com/cjf_inc)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
associated documentation files (the “Software”), to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software,
and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM,
DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.