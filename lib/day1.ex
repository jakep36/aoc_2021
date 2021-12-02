defmodule AOC.Day1 do
  def run do
    # s = ~s/199
    #   200
    #   208
    #   210
    #   200
    #   207
    #   240
    #   269
    #   260
    #   263/
    s = File.read!(Path.expand("./input/day1_part_a.txt"))
    IO.puts(s)
    part_a_calc(s)
  end

  def part_a_calc(input_string) do
    input_string
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.count(fn [x, y] -> y > x end)
  end
end
