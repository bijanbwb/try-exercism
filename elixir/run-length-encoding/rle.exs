defmodule RunLengthEncoder do
  @doc """
  Generates a string where consecutive elements are represented as a data value and count.
  "HORSE" => "1H1O1R1S1E"
  For this example, assume all input are strings, that are all uppercase letters.
  It should also be able to reconstruct the data into its original form.
  "1H1O1R1S1E" => "HORSE"
  """
  @spec encode(String.t) :: String.t
  def encode(""), do: ""
  def encode(string) do
    counts =
      string
      |> String.graphemes
      |> Enum.chunk_by(&((&1)))
      |> Enum.map(&(&1 |> Enum.count))

    letters =
      string
      |> String.graphemes
      |> Enum.chunk_by(&((&1)))
      |> Enum.map(&(&1 |> Enum.uniq))
      |> List.flatten
    
    counts
    |> Enum.zip(letters)
    |> Enum.map_join(fn({count, letter}) -> Integer.to_string(count) <> letter end)
  end

  @spec decode(String.t) :: String.t
  def decode(string) do
    counts =
      Regex.scan(~r/\d+/, string)
      |> List.flatten

    letters =
      string
      |> String.graphemes
      |> Enum.filter(&(String.match?(&1, ~r/[A-Z]/)))

    counts
    |> Enum.zip(letters)
    |> Enum.map_join(fn({count, letter}) -> String.duplicate(letter, elem(Integer.parse(count), 0)) end)
  end
end
