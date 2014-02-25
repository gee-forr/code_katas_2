fs       = require 'fs'
Reverser = require("../lib/csv_reverser").Reverser

fs.readFileSync 'test.pipe', 'ascii', (err, data) ->
  throw err if err

  reverser = new Reverser data
  new_data = reverser.reverse_multiline

  fs.writeFile 'reverse.csv', new_data, (err) ->
    throw err if err

    console.log("File saved as reverse.csv.")

