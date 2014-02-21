#!/usr/bin/env coffee

sort_list = (numbers) ->
  sorted = numbers.sort (a, b) ->
    a - b

  sorted

list_searcher = (needle, haystack) ->
  '''
  Returns the index in the sorted array of needle if found,
  else returns false
  '''
  sorted_haystack = sort_list(haystack)
  found           = sorted_haystack.indexOf(needle)

  if found is -1 then false else found

list = [1, 3, 10, -100, 2, 1, 53, 0]

console.log(sort_list(list))
console.log(list_searcher(2, list))

console.log(sort_list(list))
console.log(list_searcher(13, list))
