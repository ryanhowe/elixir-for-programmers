defmodule TextClient.Summary do

  def display(game = %{ tally: tally }) do
    IO.puts [
      "\n",
      "Word so far: #{Enum.join(tally.letters," ")}\n",
      "Guesses left: #{tally.turns_left}\n",
      "Letters used: #{Enum.join(tally.used,",")}\n",
    ]
    game
  end

  defp prompt(game) do
    game
  end

  defp make_move(game) do
    game
  end
end