# import necessary libs; random, types and struils are generally required
import random, types, strutils

# Creates a monic quadratic in the form ax^2 + bx + c and generates solutions
# in the form (ax + b)(x + c).
# r -> the roots of the quadratic
# q -> the question string (standard)
# s -> the solution string (standard)
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
