List myAverage := method(
  self sum / self size
  #self average
)


list(1, 2, 3, 4, 5, 6) myAverage println


# When any item in the list is not a number
e := try(
  list(1, "a") myAverage println
)

e catch(Exception,
  e coroutine backTraceString println
)


# When the list is empty

e := try(
  list() myAverage println
)

e catch(Exception,
  e coroutine backTraceString println
)
