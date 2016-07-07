squareBrackets := method(
  call message arguments
)

List squareBrackets := method(index,
  self at(index)
)

my_list := [1, 2, 3]

my_list println        // ==> list(1, 2, 3)
my_list[1] println     // ==> 2
