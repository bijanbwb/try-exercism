defmodule Bob do
  def hey(input) do
    cond do
      is_silent?(input) -> "Fine. Be that way!"
      is_question?(input) -> "Sure."
      is_shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp is_silent?(input), do: String.trim(input) == ""
  defp is_question?(input), do: String.ends_with?(input, "?")
  defp is_shouting?(input), do: String.upcase(input) == input && String.downcase(input) != input
end

