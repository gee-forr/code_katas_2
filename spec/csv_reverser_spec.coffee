csv_reverser = require '../src/csv_reverser'

describe("CSV reverser", () ->
  it("should reverse a single line", () ->
    str = 'abc 123'
    rev = '321 cba'

    expect(true).toEqual(false);
    #expect(csv_reverser.reverse_multi_line_string(str)).toBe(rev)
  )
)
