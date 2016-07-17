$rod1 = [3, 2, 1]
$rod2 = []
$rod3 = []

def move_from(from)

  if from == "1"
    $origin = $rod1.pop
  elsif from == "2"
    $origin = $rod2.pop
  elsif from == "3"
    $origin = $rod3.pop
  else
    puts "That's fucker up"
  end
end

def move_to(to)
  if to == "1"
    $rod1 << $origin
  elsif to == "2"
    $rod2 << $origin
  elsif to == "3"
    $rod3 << $origin
  end
end

def game_over?
  if $rod3.length >= 3 && $rod1.empty?
    true
  end
end

def play

  task = false

  while task == false
    puts "select rod to TAKE from: "
    from = gets.chomp
    move_from(from)

    puts "select rod to PUT disc in: "
    to = gets.chomp
    move_to(to)


    p $rod1
    p $rod2
    p $rod3

    if game_over?
      puts "Game is Over."
      break
    end
  end

end

play
