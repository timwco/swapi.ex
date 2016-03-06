defmodule Swapi do
  @moduledoc "Simple wrapper for the Star Wars API"
  alias HTTPoison.Response

  @doc "Gets the root url with a list of available resources"
  def root do
    nil
    |> build_url
    |> get_data
  end

  @doc "Gets an individual or list of people from the Star Wars Universe"
  def people(id \\ nil) do
    if id do
      {"people", id}
    else
      "people"
    end
    |> build_url
    |> get_data
  end

  @doc "Gets an individual or list of films from the Star Wars Universe"
  def films(id) do
    if id do
      {"films", id}
    else
      "films"
    end
    |> build_url
    |> get_data
  end

  @doc "Gets an individual or list of vehicles from the Star Wars Universe"
  def vehicles(id) do
    if id do
      {"vehicles", id}
    else
      "vehicles"
    end
    |> build_url
    |> get_data
  end

  @doc "Gets an individual or list of starships from the Star Wars Universe"
  def starships(id) do
    if id do
      {"starships", id}
    else
      "starships"
    end
    |> build_url
    |> get_data
  end

  @doc "Gets an individual or list of planets from the Star Wars Universe"
  def planets(id) do
    if id do
      {"planets", id}
    else
      "planets"
    end
    |> build_url
    |> get_data
  end

  @doc "Gets an individual or list of species from the Star Wars Universe"
  def species(id) do
    if id do
      {"species", id}
    else
      "species"
    end
    |> build_url
    |> get_data
  end


  defp get_data(url) do
    url
    |> HTTPoison.get
    |> get_body
  end

  defp build_url({path, id}) do
    "http://swapi.co/api/#{path}/#{id}/"
    |> IO.inspect
  end

  defp build_url(path) do
    if path do
      "http://swapi.co/api/#{path}/"
    else
      "http://swapi.co/api/"
    end
    |> IO.inspect
  end

  defp get_body({:ok, %Response{status_code: 404}}), do: {:error, "Resource not found"}
  defp get_body({:ok, %Response{body: body}}), do: {:ok, body}

end
