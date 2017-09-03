# EduEasy

EduEasy is a simple tool that aids in the construction of large amounts of worksheet style questions for teachers, so they can spend less time writing questions and solutions, and more time interacting with students and responding to class requests.

It currently has generators for:
  1. Monic Quadratics, in the form x^2 + bx + c
  2. Non-Monic Quadratics, in the form ax^2 + bx + c
  3. Simple differentiation, in the form ax^b
  4. Differentiation with a constant, in the form ax^b + c

### EduEasy
To use EduEasy, execute it with a few command line arguments:
```shell
./EduEasy <worksheet_name> <question_type> <question_count>
```

Worksheet name is the name or title that you want to appear on the top of the worksheet.
Question count is how many questions you want generated
Question type is the type of questions you want, these are currently set up as:

  1. `monic` for Monic Quadratics
  2. `nonmonic` for Non-monic Quadratics
  3. `singleterm` for differentiation with only one x term
  4. `constant` for differentiation with a constant and an x term

### Building EduEasy
Getting yourself a copy of EduEasy is as simple as using it, simply navigate into the directory and execute
``` shell
nim compile --path: ./generators -o: EduEasy main.nim
```
