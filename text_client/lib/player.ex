defmodule TextClient.Player do

  alias TextClient.{Mover,Prompter,State,Summary}

  def play(game = %State{tally: %{ game_state: :won}}) do
    exit_with_message(win(game.tally))
  end
  def play(game = %State{tally: %{ game_state: :good_guess}}) do
    continue_with_message(game, "Good Guess!")
  end
  def play(game = %State{tally: %{ game_state: :bad_guess}}) do
    continue_with_message(game, "Sorry that isn't in the word")
  end
  def play(game = %State{tally: %{ game_state: :already_used}}) do
    continue_with_message(game, "Sorry you already guessed that")
  end
  def play(game = %State{tally: %{ game_state: :lost}}) do
    exit_with_message("Sorry you lost :( The word was #{game.game_service.letters}")
  end
  def play(game) do
    continue(game)
  end

  def continue(game) do
    game
    |> Summary.display()
    |> Prompter.accept_move()
    |> Mover.make_move()
    |> play()
  end

  defp continue_with_message(game, message) do
    IO.puts message
    continue(game)
  end

  defp exit_with_message(msg) do
    IO.puts msg
    exit(:normal)
  end

  defp win(tally) do
    "You WON!!! The word was #{word(tally)}\n"
  end

  defp word(tally) do
    Enum.join(tally.letters,"")
  end

end