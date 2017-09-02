# import necessary libs; random, types and struils are generally required
import random, types, strutils

# define the process by which a question is generated, and the solution to
# the question
proc generator*(): Question =
  var
    r: array[3, int]
    q: string
    s: string
  r[0] = random(20)
  r[1] = random(20)
  r[2] = random(20)
  q = "$1x^2 + $2x + $3" % [$r[0], $(r[0]*r[2]+r[1]), $(r[1]*r[2])]
  s = "($1x + $2)(x + $3)" % [$r[0], $r[1], $r[2]]
  result = (q, s)
