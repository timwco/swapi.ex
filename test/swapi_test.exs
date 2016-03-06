defmodule SwapiTest do
  use ExUnit.Case, async: true
  
  test "person with id returns the correct person" do
    assert {:ok, _} = Swapi.people(1)
  end

end
