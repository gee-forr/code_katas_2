#!/usr/bin/env coffee

sort_list = (numbers) ->
  sorted = numbers.sort (a, b) ->
    a - b

  sorted

console.log(sort_list([3, 2, 1]))
console.log(sort_list([3, 10, 2, 1, 53, 0]))
console.log(sort_list([-1, 3, 10, -100, 2, 1, 53, 0]))

randoms = []; randoms.push(1000 * Math.random(random) + 1) for random in [0..25]
console.log(sort_list(randoms))
