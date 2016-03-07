defmodule Swapi do
  @moduledoc """
  Simple wrapper for the Star Wars API
  """

  alias HTTPoison.Response

  @doc """
  Gets the root url with a list of available resources
  Example:
      iex> Swapi.root
      {:ok,  {...}}
  """
  def root do
    "http://swapi.co/api/"
    |> get_data
  end

  @doc """
  Gets an individual resurce from the Star Wars Universe
  Example:
      iex> Swapi.single("people", 1)
      {:ok,  {[...]}}
  """
  def single(resource, id) do
    "http://swapi.co/api/#{resource}/#{id}/"
    |> get_data
  end

  @doc """
  Gets a list of all resources from the Star Wars Universe
  Example:
      iex> Swapi.all("people")
      {:ok,  {[...]}}
  """
  def all(resource) do
    "http://swapi.co/api/#{resource}/"
    |> get_data
  end

  @doc """
  Gets the schema for any specific resource
  Example:
      iex> Swapi.schema("people")
      {:ok,  {...}}
  """
  def schema(resource) do
    "http://swapi.co/api/#{resource}/schema"
    |> get_data
  end


  defp get_data(url) do
    url
    |> HTTPoison.get
    |> get_body
  end

  defp get_body({:ok, %Response{status_code: 404}}), do: {:error, "Resource not found"}
  defp get_body({:ok, %Response{body: body}}), do: {:ok, body}

end
