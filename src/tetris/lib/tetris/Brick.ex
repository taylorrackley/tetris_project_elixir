defmodule Tetris.Brick do
    alias Tetris.Point

    defstruct [
        name: :i,
        location: {0, 0},
        rotation: 90,
        reflect: false
    ]

    def new do
        __struct__()
    end

    def new_random do
        %{
            name: random_name(),
            location: {0, 0},
            rotation: random_rotation(),
            reflect: random_reflect()
        }
    end

    def shape(shape) do # cords are 0-3
        case shape do
            :i -> [{1, 0}, {1, 1}, {1, 2}, {1, 3}]
            :l -> [{1, 0}, {1, 1}, {1, 2}, {2, 2}]
            :o -> [{1, 1}, {1, 2}, {2, 1}, {2, 2}]
            :t -> [{0, 1}, {1, 1}, {2, 1}, {1, 2}]
            :z -> [{0, 1}, {1, 1}, {1, 2}, {2, 2}]
        end
    end

    def down(brick) do
        %{brick | location: Point.down(brick.location)}
    end

    def left(brick) do
        %{brick | location: Point.left(brick.location)}
    end

    def right(brick) do
        %{brick | location: Point.right(brick.location)}
    end

    def rotate_point(0), do: 90
    def rotate_point(90), do: 180
    def rotate_point(180), do: 270
    def rotate_point(270), do: 0

    # Another way to do the above
    # def rotate_point(270), do: 0
    # def rotate_point(degrees), do: degrees + 90

    def rotate(brick) do
        %{brick | rotation: rotate_point(brick.rotation)}
    end

    def random_name do
        [:i, :o, :l, :t, :z]
        |> Enum.random() # Pipe the list of names into a random choice
    end

    def random_reflect do # Determines which way the brick is facing
        [true, false]
        |> Enum.random()
    end

    def random_rotation do # Determines the bricks rotation
        [0, 90, 180, 270]
        |> Enum.random()
    end

end