# Import the required modules
import os, random

# import the generator modules, the generator folder path is passed to the
# compiler with the command
import quadratics.monicquadratic
import quadratics.nonmonicquadratic
import differentiation.singletermdifferentiation
import differentiation.constantdifferentiation

# set the random number generator to something unique
randomize()

# test generators
echo monicquadratic.generator()
echo nonmonicquadratic.generator()
echo singletermdifferentiation.generator()
echo constantdifferentiation.generator()
