expect     = require("chai").expect
list_utils = require("../lib/list_search")

describe "List sorter", () ->
  it "should sort lists", () ->
    unsorted = [3, 2, 1]
    sorted   = [1, 2, 3]

    sorted_list = list_utils.sort_list unsorted

    expect(list_utils.sort_list(unsorted)).to.have.length(3)
    expect(sorted_list[0]).to.equal(1)
    expect(sorted_list[1]).to.equal(2)
    expect(sorted_list[2]).to.equal(3)

describe "List searcher", () ->
  describe "should search unsorted lists", () ->
    unsorted = [5, 2, 1, 3, 4]

    it "and should find numbers that are in the list", () ->
      needle = list_utils.list_searcher(5, unsorted, list_utils.sort_list)

      expect(needle).to.equal(4) # The index of the needle in the sorted list

    it "and should not find numbers that are not in the list", () ->
      needle = list_utils.list_searcher(15, unsorted, list_utils.sort_list)

      expect(needle).to.equal(false) # The index of the needle in the sorted list




