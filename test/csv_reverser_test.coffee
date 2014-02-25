expect   = require("chai").expect
Reverser = require("../lib/csv_reverser").Reverser

describe "CSV Reverser", () ->
  it "should reverse single lines", () ->
    norm_string = "abc 123"
    rev_string  = "321 cba"

    rev = new Reverser(norm_string)

    expect(rev.reverse_line(norm_string)).to.equal(rev_string)

  it "should trim whitespace at the end of a line", () ->
    string = "whitespace, ahoy\n"
    rev    = new Reverser(string)

    expect(rev.trim(string)).to.equal("whitespace, ahoy")

  it "should change pipe delimiters found in a string to commas", () ->
    pipe_string = "my|string|goes|here"
    rev         = new Reverser(pipe_string)

    expect(rev.commarize(pipe_string)).to.equal("my,string,goes,here")

  it "should reverse and commafy a multi line string", () ->
    pipe_string = "col1|col2|col3\nabc|123|def\n"
    reverser    = new Reverser(pipe_string)

    expect(reverser.reverse_multiline()).to.equal("3loc,2loc,1loc\nfed,321,cba")


