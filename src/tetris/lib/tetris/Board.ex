defmodule Tetris.Board do
    defstruct [
        name: :board,
        grid: [10, 10],
        brick: Tetris.Brick.new,
        points: 0
    ]

    def new do
        __struct__()
    end
end