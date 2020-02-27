defmodule Tetris.Point do
    
    def left({x, y}) do
        {x-1, y}
    end

    def right({x, y}) do
        {x+1, y}
    end

    def down({x, y}) do
        {x, y+1}
    end

    def mirror({x, y}) do
        {5-x, y}
    end

    def flip({x, y}) do
        {x, 5-y}
    end

    def transpose({x, y}) do
        {y, x}
    end

    def rotate(point, 0) do
        point
    end

    def rotate(point, 90) do
        point
        |> mirror
        |> transpose
    end

    def rotate(point, 180) do
        point
        |> mirror
        |> flip
    end

    def rotate(point, 270) do
        point
        |> transpose
        |> mirror
    end

    # def add_color({x, y}, shape: :i) do
    #     {x, y, :light_blue}
    # end

    # def add_color({x, y}, shape: :z, true) do
    #     {x, y, :red}
    # end

    # def add_color({x, y}, shape: :z, false) do
    #     {x, y, :green}
    # end

    # def add_color({x, y}, shape: :o) do
    #     {x, y, :yellow}
    # end

    # def add_color({x, y}, shape: :t) do
    #     {x, y, :purple}
    # end

    # def add_color({x, y}, shape: :l, true) do
    #     {x, y, :orange}
    # end

    # def add_color({x, y}, shape: :l, false) do
    #     {x, y, :dark_blue}
    # end

end