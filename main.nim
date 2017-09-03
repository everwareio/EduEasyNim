# Import the required modules
import os, random, types, strutils

# import the generator modules, the generator folder path is passed to the
# compiler with the command
import quadratics.monicquadratic
import quadratics.nonmonicquadratic
import differentiation.singletermdifferentiation
import differentiation.constantdifferentiation

# set the random number generator to something unique
randomize()

# open the files
var worksheet: File = open("questions.txt", fmAppend)
var solutions: File = open("solutions.txt", fmAppend)

# write the title
write(worksheet, paramStr(1) & "\n\n")
write(solutions, paramStr(1) & " (Solutions)\n\n")

# loop to create the specified amount of questions
var thisq: Question
for i in countup(1, parseInt(paramStr(3))):

  # figure out what questions have been requested
  case paramStr(2)
  of "monic": thisq = monicquadratic.generator()
  of "nonmonic": thisq = nonmonicquadratic.generator()
  of "singleterm": thisq = singletermdifferentiation.generator()
  of "constant": thisq = constantdifferentiation.generator()

  # write the question to the file
  write(worksheet, $i & ") " & thisq.question & "\n")
  write(solutions, $i & ") " & thisq.solution & "\n")

# close the files
close(worksheet)
close(solutions)
