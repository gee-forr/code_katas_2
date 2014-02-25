#CoffeeScript = require 'coffee-script'
#CoffeeScript.register()

#require 'coffee-script/register'
csv_reverser = require('../src/csv_reverser')

describe "CSV reverser", () ->
  it "should reverse a single line", (done) ->
    str = 'abc 123'
    rev = '321 cba'

    expect(true).toEqual(true);
    expect(csv_reverser.reverse_multi_line_string(str)).toBe(rev)

    done()
