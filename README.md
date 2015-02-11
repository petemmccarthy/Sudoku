[![Code Climate](https://codeclimate.com/github/petermccarthy49/Sudoku/badges/gpa.svg)](https://codeclimate.com/github/petermccarthy49/Sudoku) [![Test Coverage](https://codeclimate.com/github/petermccarthy49/Sudoku/badges/coverage.svg)](https://codeclimate.com/github/petermccarthy49/Sudoku)


# Sudoku Solver

A Ruby program that can automatically generate and solve any 9 x 9 Sudoku grid.

#### Requirements

- The aim of the game is to fill out the entire grid with numbers.
- Every row, column and every box must have all nine digits 1 to 9. That is, if row 1 in this example already has digits 8 and 9, they can't be used in that row again

##### Technologies and methods used:

- Ruby
- Tested using Rspec


#### (STATUS - Work In Progress - but watch this space!)

##### Instructions to run

Clone the repository:

```
$ git clone https://github.com/petermccarthy49/sudoku.git
```

Change into the directory and run the rspec tests:

```
$ cd sudoku

$ rspec
```

Play with it:

```
$ cd sudoku/lib

$ irb
```

#### Next steps

- To implement a solution for a hard SuDoku puzzle, where there is no unique solution for any of the unsolved cells