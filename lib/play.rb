require 'io/console'
require "grid"

@grid_size = 30
@x_position = @grid_size/2 
@y_position = @grid_size/2 
input = 'k'

def move(direction)
  case direction
  when 'up'
    @y_position = locate(@y_position, 'up')
  when 'down'
    @y_position = locate(@y_position, 'down')
  when 'left'
    @x_position = locate(@x_position, 'down')
  when 'right'
    @x_position = locate(@x_position, 'up')
  end
end

def locate(axis_position, increment)
  increment == 'up' ? bound = @grid_size : bound = 0
  axis_position != bound ? axis_position = iterate(increment, axis_position) : axis_position
end

def iterate(direction, position)
  direction == 'up' ? position +=1 : position -= 1
end

puts "choose any key for the background"
response = $stdin.getch
response == "\r" ? grid_pattern = ' ' : grid_pattern = response 
puts "Use the keys centered around 's' to move around and <space bar> to quit"
puts "press any key to continue"
puts "Enjoy!"


while not input == ' ' # spacebar to quit 
  input = $stdin.getch
  
  case input
  when 'w'
    move('down')
  when 'a'
    move('left')
  when 'd'
    move('right')
  when 'x'
    move('up')
  when 'q'
    move('down')
    move('left')
  when 'e'
    move('down')
    move('right')
  when 'z'
    move('up')
    move('left')
  when 'c'
    move('up')
    move('right')
  else
    @y_position;
    @x_position
  end
  
  grid = Grid.new(@grid_size, @grid_size, [@x_position, @y_position], grid_pattern)
  grid.clear_screen
  grid.print_grid
  
end
