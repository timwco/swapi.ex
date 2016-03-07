# Elixir Based Star Wars API Wrapper

[![Build Status](https://travis-ci.org/twhitacre/swapi.ex.svg?branch=master)](https://travis-ci.org/twhitacre/swapi.ex)
[![Hex.pm](https://img.shields.io/hexpm/l/swapi.svg)](https://hex.pm/packages/swapi)
[![Hex.pm](https://img.shields.io/hexpm/v/swapi.svg)](https://hex.pm/packages/swapi)

A simple wrapper for the [Star Wars API](http://swapi.co) - [Swapi Documentation](https://swapi.co/documentation)

## Installation

The [Hex package](https://hex.pm/packages/swapi) can be installed as:

  1. Add `swapi` to your list of dependencies in `mix.exs`:

        def deps do
          [{:swapi, "~> 1.0.0"}]
        end

  2. Ensure `swapi` is started before your application:

        def application do
          [applications: [:swapi]]
        end

## Usage

For each below (except `root`) you can use any of the following:

- `people`
- `films`
- `starships`
- `vehicles`
- `species`
- `planets`

#### Root

```elixir
# Get the list of resources
iex> Swapi.root
{:ok, {...}}
```

#### Single

```elixir
# Get all people
iex> Swapi.single("people", 1)
{:ok, {...}}
```

#### All

```elixir
# Get all people
iex> Swapi.all("people")
{:ok, {...}}
```

#### Schema

```elixir
# Get the schema for people
iex> Swapi.schema("people")
{:ok, {...}}
```
