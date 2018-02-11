defmodule RockPaperScissors do
  # Let's play! You have to return which player won! In case of a draw return Draw!.
  # rps('scissors','paper') // Player 1 won!
  # rps('scissors','rock') // Player 2 won!
  # rps('paper','paper') // Draw!

  # First attempt
  # def rps(p1, p2) when p1 == p2, do: "Draw!"
  # def rps(p1, p2) do
  #   player1_won = "Player 1 won!"
  #   player2_won = "Player 2 won!"

  #   case {p1, p2} do
  #     {"rock", "paper"} -> player2_won
  #     {"rock", "scissors"} -> player1_won
  #     {"paper", "scissors"} -> player2_won
  #     {"paper", "rock"} -> player1_won
  #     {"scissors", "rock"} -> player2_won
  #     {"scissors", "paper"} -> player1_won
  #   end
  # end

  def rps(p1, p2) when p1 == p2, do: "Draw!"

  def rps(p1, p2) do
    if nemesis(p1) == p2 do
      "Player 1 won!"
    else
      "Player 2 won!"
    end
  end

  defp nemesis("rock"), do: "scissors"
  defp nemesis("paper"), do: "rock"
  defp nemesis("scissors"), do: "paper"
end
