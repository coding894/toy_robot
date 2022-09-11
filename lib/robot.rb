class Robot
    attr_accessor position_x, position_y, facing

    def initialize(position_x, position_y, facing) 
        @position_x = 0   
        @position_y = 0
        @facing = ["NORTH", "EAST", "SOUTH", "WEST"]
    end

    def place(position_x, position_y, facing)
    end

    error_message = "You must choose a position between 0 and 4"

    def position_contraints (position_x, position_y)
        puts error_message unless position_x & position_y <=4 & >=0
    end 

    def move_north
        @position_x += 1
    end

    def move_south
        @position_x -= 1
    end

    def move_east
        @position_y += 1
    end

    def move_west
        @position_y -= 1
    end

    def report
    end
end

bender = Robot.new()
