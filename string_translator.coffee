#!/usr/bin/env coffee

string_converter = (str) ->
  throw "Too short, your string (#{str}) must be more than 5 characters" unless str.length >= 5
  throw "Too long, your string (#{str}) must be more than 40 characters" unless str.length <= 40

  char_index = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
  num_index  = ['zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  str_parts  = str.split('')
  new_string = ''

  for str_part in str_parts
    if str_part.match(/[a-zA-z]/)
      new_string += char_index.indexOf(str_part.toLowerCase())
    else
      new_string += num_index[str_part]

  new_string

console.log string_converter('Abc12')
console.log string_converter('foo123Bar')
console.log string_converter('BAZ5678qux')
console.log string_converter('12Cd')
