require "spec_helper"

module TicTacToe
    RSpec.describe Player do
      context "#initialize" do
   
        it "raises an exception when initialized with {}" do
            expect { Player.new({}) }.to raise_error
        end

        it "does not raise an error when initialized with a valid input hash" do
            input = { color: "X", name: "Someone" }
            expect { Player.new(input) }.to_not raise_error
          end
   
      end

      context "#name" do
        it "returns the player name" do
          input = {name: "Someone" , type: "X"}
          player = Player.new(input)
          expect(player.name).to eq "Someone"
        end
      end
       
      context "#type" do
        it "returns the player's type" do
          input = { name: "Someone" , type: "X" }
          player = Player.new(input)
          expect(player.type).to eq "X"
        end
      end
    end
  end

