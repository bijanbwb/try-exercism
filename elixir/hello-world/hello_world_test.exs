if !System.get_env("EXERCISM_TEST_EXAMPLES") do
  Code.load_file("hello_world.exs", __DIR__)
end

ExUnit.start
ExUnit.configure exclude: :pending, trace: true

defmodule HelloWorldTest do
  use ExUnit.Case

  test "says hello with no name" do
    assert HelloWorld.hello() == "Hello, World!"
  end

  test "says hello sample name" do
    assert HelloWorld.hello("Alice") == "Hello, Alice!"
  end

  test "says hello other sample name" do
    assert HelloWorld.hello("Bob") == "Hello, Bob!"
  end
end

