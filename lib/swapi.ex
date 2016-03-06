defmodule Swapi do
  @moduledoc """
  Simple wrapper for the Star Wars API
  """
  alias HTTPoison.Response

  @doc """
  Gets an individual person from the Star Wars Universe

  Example:
    iex> Swapi.people(1)
    {:ok,  {...}}
  """
  def people(id) do
    "http://swapi.co/api/people/#{id}/"
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
