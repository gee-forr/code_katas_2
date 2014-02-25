#!/usr/bin/env coffee

# Note - this script will require node.js to run, as reading files on the server side via js
# is not something vanilla js does too well

class Reverser
  constructor: (@string) ->

  reverse_multiline: () ->
    lines    = @string.split(/\n/)
    new_data = []

    for line in lines
      rev_line = @reverse_line(line)
      new_line = @commarize(rev_line)

      new_data.push new_line

    @trim(new_data.join("\n"))

  reverse_line: (line) ->
    "#{@trim(line.split('').reverse().join(''))}"

  commarize: (line) ->
    line.replace(/\|/g, ',')

  trim: (line) ->
    line.replace(/\s+$/g, "")

module.exports.Reverser = Reverser

fs = require 'fs'

fs.readFileSync 'test.pipe', 'ascii', (err, data) ->
  throw err if err

  reverser = new Reverser data
  new_data = Reverser.reverse_multiline

  fs.writeFile 'reverse.csv', new_data, (err) ->
    throw err if err

    console.log("File saved as reverse.csv.")
