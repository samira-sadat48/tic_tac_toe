module TicTacToe
    class Board
        attr_reader :grid
        def initialize(input = {})
            @grid = input.fetch(:grid, default_grid)
        end

        private

        def default_grid
            # 3x3 Grid of Empty Cells
            Array.new(3) { Array.new(3) { Cell.new } }
        end

        public

        def get_cell(x,y)
            grid[y][x]
        end

        def set_cell(x, y, value)
            get_cell(x, y).value = value
        end   

    end
end