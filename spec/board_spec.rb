require "spec_helper"

module TicTacToe
    RSpec.describe Board do

        context "#initialize" do
            it "initializes a board with its own grid" do
                expect { Board.new(grid: "grid")}.to_not raise_error
            end

            it "sets a default grid of three rows" do
                board = Board.new
                expect(board.grid.size).to eq(3)
            end

            it "sets each row to have 3 cells by default" do
                board = Board.new
                board.grid.each do |row|
                    expect(row.size).to eq(3)
                end
            end
        end

        context "#grid" do
            it "returns the grid" do
                board = Board.new(grid: "test")
                expect(board.grid).to eq "test"
            end
        end

    end
end