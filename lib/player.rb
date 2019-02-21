class Player
    attr_reader :name, :points

    def initialize(name)
        @name = name
        @points = 60
    end

    def change_points(value)
      @points += value
    end
end
