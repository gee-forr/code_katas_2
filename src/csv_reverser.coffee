#!/usr/bin/env coffee

# Note - this script will require node.js to run, as reading files on the server side via js
# is not something vanilla js does too well

fs = require 'fs'

reverse_multi_line_string = (string) ->
  lines    = data.split(/\n/)
  new_data = []

  for line in lines
    rev_line = "#{line.split('').reverse().join('')} "
    new_line = rev_line.replace(/\|/g, ',')

    new_data.push new_line

  new_data.join("\n")

fs.readFile('test.pipe', 'ascii', (err, data) ->
  throw err if err

  lines    = data.split(/\n/)
  new_data = []

  for line in lines
    rev_line = "#{line.split('').reverse().join('')} "
    new_line = rev_line.replace(/\|/g, ',')

    new_data.push new_line

  fs.writeFile('reverse.csv', new_data.join("\n"), (err) ->
    throw err if err

    console.log("File saved as reverse.csv.")
  )
)
