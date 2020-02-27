defmodule Tetris.Points do

    def move_right(points) do
        Enum.map(points, fn x ->Point.right(x) end)
    end

    def move_left(points) do
        Enum.map(points, fn x -> Point.left(x) end)
    end

    def rotate(points, degrees) do
        Enum.map(points, fn x -> Tetris.Point.rotate(x, degrees) end)
    end

    def print(points)do
        for y <-1..4 do
            for x <-1..4 do
            if Enum.member?(points, {x,y}) do
                IO.write("O")
            else
                IO.write("X")
            end
            end
            IO.puts("")
        end
    end

    #  def flip(points) do
    #     Enum.map(points, fn x -> Tetris.Point.flip(x) end)
    # end

    # def mirror(points, reflect) do
    #     case reflect do
    #         true -> Enum.map(points, fn x -> Tetris.Point.mirror(x) end)
    #         false -> points
    #     end
    # end


end