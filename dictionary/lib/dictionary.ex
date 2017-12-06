defmodule Dictionary do
  @moduledoc """
  Documentation for Dictionary.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Dictionary.hello
      :world

  """
  def hello do
    IO.puts "hello world!!"
  end

  def word_list do
    "../assets/words.txt"
    |> Path.expand(__DIR__)
    |> File.read!
    |> String.split(~r/\n/)
  end

  def random_word do
    word_list
    |> Enum.random
  end
  
  def swap({a,b}) do
    {b,a}
  end
  def same(a,a) do
    true
  end

def same(a,b) do
  false
end

end
