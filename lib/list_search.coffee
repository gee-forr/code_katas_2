#!/usr/bin/env coffee

# I tried to model the solution here as closely as possible to the answer3.java template
# This naturally becomes a little awkward, as the language philosphies are somewhat different.
# As javascript tends to gain most of it's power from the fact that it's productive when used as
# closely as possible as a functional language, I would not (in the real world) call sort_list()
# from within list_searcher(), but rather send a list sorter as a function parameter, as you can see below.

sort_list = (numbers) ->
  sorted = numbers.sort (a, b) ->
    a - b

  sorted

list_searcher = (needle, haystack, sorter) ->
  '''
  Requires a needle, haystack, and a function that sorts the haystack.
  Returns the index in the sorted array of needle if found,
  else returns false
  '''
  sorted_haystack = sorter(haystack)
  found           = sorted_haystack.indexOf(needle)

  if found is -1 then false else found

#list = [1, 3, 10, -100, 2, 1, 53, 0]

#console.log(sort_list(list))
#console.log(list_searcher(2, list, sort_list)) # Should return 4 as the index

#console.log(sort_list(list))
#console.log(list_searcher(13, list, sort_list)) # Should return false, as 13 doesn't exist

module.exports.sort_list     = sort_list
module.exports.list_searcher = list_searcher
