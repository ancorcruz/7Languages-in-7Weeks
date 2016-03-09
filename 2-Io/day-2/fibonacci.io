fib := method(pos,
  prev := 1
  current := 1
  for(i, 1, pos - 2,
    next := prev + current
    prev = current
    current = next)

  current
)

fib(1) println
fib(4) println


fib_recursive := method(pos,
  next := method(pos, prev, current,
    if(pos > 0,
      return next(pos - 1, current, prev + current),
      return current)
  )

  next(pos - 2, 1, 1)
)


"Recursive Fibonacci" println

fib_recursive(1) println
fib_recursive(4) println
