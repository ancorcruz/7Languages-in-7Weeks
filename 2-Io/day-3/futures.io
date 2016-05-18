futureResult := URL with("http://google.com") @fetch

writeln("Do something inmediately while fetch goes in background..")
wait(1)

writeln("This will block until the result is available.")
writeln("fetched ", futureResult size, " bytes")
