#echo "hello world. who are you? "
#var name = readLine(stdin)
#echo "Sup, ", name, "!"
import jester, strtabs, htmlgen

get "/":
  resp h1("hello world")

run()
