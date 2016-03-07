defmodule SwapiTest do
  use ExUnit.Case, async: true

  # Root Endpoint Test
  test "root returns a successful response" do
    assert {:ok, _} = Swapi.root
  end

  # Single Resource Tests
  test "single people endpoint returns a successful response" do
    assert {:ok, _} = Swapi.single("people", 1)
  end

  test "single film endpoint returns successful response" do
    assert {:ok, _} = Swapi.single("films", 1)
  end

  # All Resource Tests
  test "all people returns a successful response" do
    assert {:ok, _} = Swapi.all("people")
  end

  test "all film returns a successful response" do
    assert {:ok, _} = Swapi.all("films")
  end


  # Schema Tests
  test "starships schema returns successful response" do
    assert {:ok, _} = Swapi.schema("starships")
  end

  test "people schema returns successful response" do
    assert {:ok, _} = Swapi.schema("people")
  end

end
