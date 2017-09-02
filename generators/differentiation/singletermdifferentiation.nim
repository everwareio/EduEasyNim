# import necessary libs; random, types and struils are generally required
import random, types, strutils

# define the process by which a question is generated, and the solution to
# the question
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
