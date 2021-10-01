module TicTacToe
    class Player
        attr_reader :name, :type
        def initialize(input)
            if input == nil
                raise ArgumentError.new "Invalid Player Arguments"
            end
            @name = input.fetch(:name)
            @type = input.fetch(:type)
        end
    end
end