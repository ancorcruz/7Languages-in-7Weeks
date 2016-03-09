Matrix := Object clone do (
  dim := method(x, y,
    self content := list setSize(x) map(list setSize(y))
    self
  )

  set := method(x, y, value,
    self content at(x) atPut(y, value)
    self
  )

  get := method(x, y,
    self content at(x) at(y)
  )

  transpose := method(
    new_matrix := Matrix clone
    new_matrix content := self content map(reverse) reverse
    new_matrix
  )

  save := method(filename,
    File with(filename) open write(self serialized) close
    self
  )

  # All values are loaded as strings
  load := method(filename,
    doRelativeFile(filename)
  )
)

matrix := Matrix clone
matrix dim(3, 3)
matrix content println

"\nset 2, 0 as \"hello\"" println
matrix set(2, 0, "hello")
matrix content println

"\naccess position 2, 0" println
matrix get(2, 0) println

"\ntranspose the matrix" println
matrix transpose content println

"\nsave original matrix to file" println
matrix save("my_matrix.txt") content println

"\nreading matrix from file" println
Matrix load("my_matrix.txt") content println
