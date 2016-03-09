Number division := Number getSlot("/")

Number / := method(number,
  if(number == 0,
    0,
    self division(number))
)


(10 / 2) println
(10 / 0) println

