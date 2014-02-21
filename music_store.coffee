#!/usr/bin/env coffee

fs = require 'fs'

store_data = ''

fs.readFile('store.json', 'ascii', (err, data) ->
  throw err if err

  store_data = eval data
)

console.log(store_data)



