
:lists.flatten [1,[3],2]
#x = 55
#cond do
  #x == 3 -> IO.puts "three"
  #x == 4 -> IO.puts "four"
  #true -> IO.puts "nothing"
#end
#try do
  #throw 13
#catch
  #nan when not is_number(nan) -> IO.puts "hwere: #{nan}"
#after
  #IO.puts "didn't catch"
#end
x = fn -> &1*
