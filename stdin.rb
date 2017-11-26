require 'io/console'

inp = 'k'
value = 4

def move(direction, val)
direction == 'left' ? val += 1 : val -= 1
end



while not inp == ' '
  inp = $stdin.getch
  puts inp

  case inp
  when 'w'
    move('left')
  else
    inp = 'foo'
  end

puts imp

end
