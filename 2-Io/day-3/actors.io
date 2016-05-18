slower := Object clone
slower start := method(wait(2); writeln("slowly"))

faster := Object clone
faster start := method(wait(1); writeln("quickly"))

">> Sequencially:" println
slower start; faster start

">> Concurrent:" println
slower @@start; faster @@start; wait(3)
