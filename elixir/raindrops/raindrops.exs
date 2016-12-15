defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t
  def convert(n) do
    cond do
      is_plingable(n) && is_plangable(n) && is_plongable(n) -> "PlingPlangPlong"
      is_plingable(n) && is_plangable(n) -> "PlingPlang"
      is_plingable(n) && is_plongable(n) -> "PlingPlong"
      is_plangable(n) && is_plongable(n) -> "PlangPlong"
      is_plongable(n) -> "Plong"
      is_plangable(n) -> "Plang"
      is_plingable(n) -> "Pling"
      true -> Integer.to_string(n)
    end
  end

  defp is_plingable(number), do: rem(number, 3) == 0
  defp is_plangable(number), do: rem(number, 5) == 0
  defp is_plongable(number), do: rem(number, 7) == 0
end
