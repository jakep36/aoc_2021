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
    part_a_calc(s)
    part_b_calc(s)
  end

  def increases(measurements) do
    measurements
    |> Enum.chunk_every(2, 1, :discard)
    |> Enum.count(fn [x, y] -> y > x end)
  end

  def map_of_integers(s) do
    s
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.map(&String.to_integer/1)
  end

  def part_a_calc(input_string) do
    input_string
    |> map_of_integers()
    |> increases()
  end

  def part_b_calc(input_string) do
    input_string
    |> map_of_integers
    |> Enum.chunk_every(3, 1, :discard)
    |> Enum.map(&Enum.sum/1)
    |> increases()
  end
end
