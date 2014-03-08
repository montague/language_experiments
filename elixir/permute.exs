defmodule P do
  def permute(list) do
    [head | tail] = list
    insert_element(head, tail)
  end

  def insert_element(el, []), do: [[el]]

  def insert_element(el, list) do
    [head | tail] = list
    permuted = insert_element(head, tail)
    Enum.flat_map(permuted, fn(current_list) ->
      Enum.map((0..length(current_list)), &(List.insert_at(current_list,&1,el)))
    end)
  end
end

ExUnit.start
defmodule PermutationTest do
  use ExUnit.Case

  test "permute" do
    x = [1,2]
    y = [1,2,3]
    assert Enum.sort(P.permute(x)) == Enum.sort([[1,2],[2,1]])
    assert Enum.sort(P.permute(y)) == Enum.sort([
      [1,2,3],[1,3,2],
      [2,1,3],[2,3,1],
      [3,1,2],[3,2,1]
      ])
  end

  test "insert_element general" do
    expected = Enum.sort([ [1,2], [2,1] ])
    actual = P.insert_element(1,[2])
    assert actual == expected
  end

  test "insert_element base" do
    assert P.insert_element(1, []) == [[1]]
  end
end
