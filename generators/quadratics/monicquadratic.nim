# import necessary libs; random, types and struils are generally required
import random, types, strutils

# define the process by which a question is generated, and the solution to
# the question
proc generator*(): Question =
  var
    r: array[2, int]
    q: string
    s: string
  r[0] = random(20)
  r[1] = random(20)
  q = "(x^2 + $1x + $2)" % [$(r[0]+r[1]), $(r[0]*r[1])]
  s = "(x + $1)(x + $2)" % [$r[0], $r[1]]
  result = (q, s)
