fs       = require 'fs'
Reverser = require("./csv_reverser").Reverser

last_arg = process.argv.length - 1
console.log process.argv[last_arg]

fs.readFileSync 'test.pipe', 'ascii', (err, data) ->
  throw err if err

  console.log("foooo")

  reverser = new Reverser data
  new_data = reverser.reverse_multiline

  fs.writeFile 'reverse.csv', new_data, (err) ->
    throw err if err

    console.log("File saved as reverse.csv.")

