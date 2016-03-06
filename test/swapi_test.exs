defmodule SwapiTest do
  use ExUnit.Case, async: true

  # Root Endpoint Test
  test "root returns a succesffull response" do
    assert {:ok, _} = Swapi.root
  end

  # People Endpoint Tests
  test "person without id returns successful response" do
    assert {:ok, _} = Swapi.people
  end

  test "person with id returns a succesfull response" do
    assert {:ok, _} = Swapi.people(1)
  end

  # Film Endpoing Tests
  test "film without id returns a succesfull response" do
    assert {:ok, _} = Swapi.films
  end

  test "film with id returns a succesfull response" do
    assert {:ok, _} = Swapi.films(1)
  end

  # Vehicle Endpoint Tests
  test "vehicle without id returns a succesfull response" do
    assert {:ok, _} = Swapi.vehicles
  end

  test "vehicle with id returns a succesfull response" do
    assert {:ok, _} = Swapi.vehicles(4)
  end

  # Starship Endpoint Tests
  test "starship without id returns a succesfull response" do
    assert {:ok, _} = Swapi.starships
  end

  test "starship with id returns a succesfull response" do
    assert {:ok, _} = Swapi.starships(9)
  end

  # Species Endpoint Tests
  test "species without id returns a succesfull response" do
    assert {:ok, _} = Swapi.species
  end

  test "species with id returns a succesfull response" do
    assert {:ok, _} = Swapi.species(1)
  end

  # Plant Endpoint Tests
  test "planet without id returns a succesfull response" do
    assert {:ok, _} = Swapi.planets
  end

  test "planet with id returns a succesfull response" do
    assert {:ok, _} = Swapi.planets(1)
  end

end
