Builder := Object clone do(
  indentation := ""

  forward := method(
    writeln(indentation, "<", call message name, ">")
    self indentation := indentation .. "  "

    call message arguments foreach(
      arg,
      content := self doMessage(arg);
      if(content type == "Sequence", writeln(indentation, content))
    )

    self indentation := ""
    writeln(indentation, "</", call message name, ">")
  )
)

//OperatorTable addAssignOperator(":", "atPutNumber")
//
//curlyBrackets := method(
//  r := Map clone
//  call message arguments foreach(arg,
//       r doMessage(arg)
//    )
//
//  r
//)
//
//Map atPutNumber := method(
//  self atPut(
//    call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
//    call evalArgAt(1)
//  )
//)

//Builder ul({"class": "list", "id": "languages"},
Builder ul(
  li("Ruby"),
  li("Io"),
  li("Lua"),
  li("JavaScript")
)
