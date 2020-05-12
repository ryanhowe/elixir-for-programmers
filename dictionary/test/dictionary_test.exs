defmodule DictionaryTest do
  use ExUnit.Case
  doctest Dictionary

  test "greets the world" do
    assert Dictionary.hello() == :world
    assert Dictionary.hello() == :hello
  end
end
