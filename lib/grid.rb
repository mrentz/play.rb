require 'colorize'  

class  Grid

  attr_accessor :grid_size_x, :grid_size_y, :position, :grid_pattern

  def initialize(grid_size_x = 10, grid_size_y = 10, position = [0, 0], grid_pattern = ' ')
    @x = grid_size_x
    @y = grid_size_y
    @x_position = position[0]
    @y_position = position[1]
    @background = grid_pattern
  end
  
  def clear_screen
    clear_code = %x{clear}
    print clear_code
  end
  
  def print_grid
    row = Array.new(@x, @background)
    for i in 0..@y
      (i == @y_position ? (row[@x_position] = "X".colorize(:red);
                           print row.join;
                           row[@x_position] = @background) : (print row.join))
      puts ""
    end
  end
  
end

if __FILE__ == $0

end
