class Grid
    attr_accessor :x_max, :y_max, 
  
    def initialize(x = 4, y = 4)
      @x_max = x_max
      @y_max = y_max
    end

    def constraints (x_max, y_max)
        if x_max == 0..4
            true
        end
        if y_max == 0..4
            true
        end
    end
end