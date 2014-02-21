#!/usr/bin/env coffee

fs   = require 'fs'

store_data = 'a'

fs.readFile('store.json', 'ascii', (err, data) ->
  throw err if err

  store = JSON.parse data

  get_products_for = (name, branch, store_data) ->
    stock = "#{name} at #{branch} has the following stock: \n"
    merch = ['books', 'cds']

    for store in store_data['stock']
      if store.name == name && store.branch == branch
        for merchandise in merch
          stock += "   #{merchandise}: "

          if store.hasOwnProperty merchandise
            stock += store[merchandise].join(', ')
          else
            stock += "None"

          stock += "\n"

    stock

  get_stores_stocking_cd = (cd, store_data) ->
    merch_type      = 'cds'
    stores_in_stock = []
    who_has_stock   = ''

    for store in store_data["stock"]
      if store.hasOwnProperty(merch_type) && store[merch_type].indexOf(cd) > -1
        stores_in_stock.push({name: store.name, branch: store.branch})

    if stores_in_stock.length > 0
      who_has_stock += "The following stores have stock of #{cd}:\n"

      for store in stores_in_stock
        who_has_stock += "  #{store.name} at #{store.branch}\n"
    else
      who_has_stock += "No stores have stock of #{cd}. Have you considered iTunes?"

    who_has_stock

  console.log(get_products_for('Exclusive Books', 'Soweto', JSON.parse data))
  console.log(get_stores_stocking_cd('Creed', JSON.parse data))
  console.log(get_stores_stocking_cd('Nine Inch Nails', JSON.parse data))
  console.log(get_stores_stocking_cd('Britney Spears', JSON.parse data))
)
