# import necessary libs; random, types and struils are generally required
import random, types, strutils

# Creates a differation question in the form ax^b + c and a solution in the same
# form
# c -> the coefficient of x
# i -> the index of x
# p -> a constant term
# q -> the question string (standard)
# s -> the solution string (standard)
proc generator*(): Question =
  var
    c: int = random(20)
    i: int = random(20)
    p: int = random(100)
    q: string
    s: string
  q = "$1x^$2 + $3" % [$c, $i, $p]
  s = "$1x^$2" % [$(c*i), $(i-1)]
  result = (q, s)
