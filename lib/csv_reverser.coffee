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
