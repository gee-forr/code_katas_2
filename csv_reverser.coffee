#!/usr/bin/env coffee

fs = require 'fs'

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
