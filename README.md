# Elixir Based Star Wars API Wrapper

[![Build Status](https://travis-ci.org/twhitacre/swapi.ex.svg?branch=master)](https://travis-ci.org/twhitacre/swapi.ex)

A simple wrapper for the [Star Wars API](http://swapi.co) - [Swapi Documentation](https://swapi.co/documentation)

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add swapi to your list of dependencies in `mix.exs`:

        def deps do
          [{:swapi, "~> 0.0.1"}]
        end

  2. Ensure swapi is started before your application:

        def application do
          [applications: [:swapi]]
        end

## Usage

#### Root

```elixir
# Get the list of resources
iex> Swapi.root
{:ok, {...}}
```

#### People

```elixir
# Get all people
iex> Swapi.people
{:ok, {...}}

# Get single person
iex> Swapi.people(1)
{:ok, {...}}
```

#### Films

```elixir
# Get all films
iex> Swapi.films
{:ok, {...}}

# Get single film
iex> Swapi.films(1)
{:ok, {...}}
```

#### Starships

```elixir
# Get all starships
iex> Swapi.starships
{:ok, {...}}

# Get single starship
iex> Swapi.starships(1)
{:ok, {...}}
```

#### Vehicles

```elixir
# Get all vehicles
iex> Swapi.vehicles
{:ok, {...}}

# Get single vehicle
iex> Swapi.vehicles(1)
{:ok, {...}}
```

#### Species

```elixir
# Get all species
iex> Swapi.species
{:ok, {...}}

# Get single species
iex> Swapi.species(1)
{:ok, {...}}
```

#### Planets

```elixir
# Get all planets
iex> Swapi.planets
{:ok, {...}}

# Get single planet
iex> Swapi.planets(1)
{:ok, {...}}
```

#### Schema

```elixir
# Get the schema for people (all other resources work as well)
iex> Swapi.schema("people")
{:ok, {...}}
```
