# Io Day 1

# Io language community that will answer questions:
# stackoverflow.com
# https://groups.yahoo.com/neo/groups/iolanguage/info

# Style guide with Io idioms:
# https://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide

# Evaluate 1 + 1 and 1 + "one". Is Io strongly typed or weakly type?
(1 + 1) println

result := try(1 + "one")
result catch(Exception,
  "Io doesn't try to coerce strings into numbers, hence it is strong typed" println
)


("0 is " .. 0 not not) println

("empty string is " .. "" not not) println

("nil is " .. nil not not) println


# What is the difference between equals, colon equals and colon colon equals?
# When would you use each one?

myNewSlot := "colon equals creates a new slot"
myNewSlot = "equals is an assignment operator, the slot must exists before"

Airplane := Object clone do(
  brand ::= "colon colon equals creates an slot and a setter with a default value"
)

boeing := Airplane clone
airbus := Airplane clone setBrand("you cand set the slot value with the setter when clonning the object")


# How can you tell what slots a prototype supports?
Vehicle := Object clone
Vehicle proto println


# Run an Io program form a file:
# Just type in the console: $ io day-1.io


# Execute the code in a slot given its name.
Vehicle start := method("**Engine sounds**" println)
Vehicle getSlot("start") call
