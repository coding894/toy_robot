class Grid
    attr_accessor :x_axis, :y_axis, 
  
    def initialize(x = 4, y = 4)
      @x_axis = x_axis
      @y_axis = y_axis
    end

    def constraints (x_axis, y_axis)
        if x_axis == 0..4
            true
        end
        if y_axis == 0..4
            true
        end
    end
end