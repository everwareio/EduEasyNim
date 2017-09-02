# import necessary libs; random, types and struils are generally required
import random, types, strutils

# Creates a monic quadratic in the form ax^b and generates solutions
# in the same form
# c -> the coefficient of x
# i -> the index of x
# q -> the question string (standard)
# s -> the solution string (standard)
proc generator*(): Question =
  var
    c: int
    i: int
    q: string
    s: string
  c = random(20)
  i = random(20)
  q = "$1x^$2" % [$c, $i]
  s = "$1x^$2" % [$(c*i), $(i-1)]
  result = (q, s)
