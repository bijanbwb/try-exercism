defmodule HelloWorld do
  @moduledoc """
  `HelloWorld` module with `hello/1` function.

  ## Usage

  ```elixir
  iex> HelloWorld.hello("José Valim")
  "Hello, José Valim!"

  iex> HelloWorld.hello()
  "Hello, World!"
  ```
  """

  @doc """
  Greets the user by name, or by saying "Hello, World!"
  if no name is given.
  """
  @spec hello(String.t) :: String.t
  def hello(name \\ "World"), do: "Hello, #{name}!"
end
