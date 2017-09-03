# import necessary libs; random, types and struils are generally required
import random, types, strutils

# Creates a monic quadratic in the form x^2 + ax + b and generates solutions
# in the form (x + a)(x + b).
# r -> the roots of the quadratic
# q -> the question string (standard)
# s -> the solution string (standard)
proc generator*(): Question =
  var
    r: array[2, int]
    q: string
    s: string
  r[0] = random(20)
  r[1] = random(20)
  q = "x^2 + $1x + $2" % [$(r[0]+r[1]), $(r[0]*r[1])]
  s = "(x + $1)(x + $2)" % [$r[0], $r[1]]
  result = (q, s)
