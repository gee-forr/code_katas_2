#!/usr/bin/env coffee

# Usage: coffee reverse.coffee -n <from_file.pipe> <to_file.csv>

fs       = require 'fs'
Reverser = require("../lib/csv_reverser").Reverser

from_arg = process.argv.length - 2
to_arg   = process.argv.length - 1

from_file = process.argv[from_arg]
to_file   = process.argv[to_arg]

fs.readFile from_file, 'ascii', (err, data) ->
  throw err if err

  reverser = new Reverser data
  new_data = reverser.reverse_multiline()

  fs.writeFile to_file, new_data, (err) ->
    throw err if err

    console.log("File saved as #{to_file}.")
