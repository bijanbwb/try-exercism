defmodule Acronym do
  @doc """
  Generate an acronym from a string.
  "This is a string" => "TIAS"
  """
  @spec abbreviate(String.t()) :: String.t()
  def abbreviate(string) do
    ~r/\b\w|[A-Z]/
    |> Regex.scan(string)
    |> List.flatten
    |> Enum.map_join(&(String.capitalize(&1)))
  end
end
