def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end


def list(songs)
  songs.each_with_index{|item, index|
    puts "#{index + 1}. #{item}"
  }
end


def exit_jukebox
  puts "Goodbye"
end

def play(songs)
 puts "Please enter a song name or number:"
 choice = gets.strip
 if songs.include?(choice)
  puts "Playing #{choice}"
 elsif choice.to_i > 0 && choice.to_i < 10
  puts "Playing #{songs[choice.to_i - 1]}"
 else
  puts "Invalid input, please try again"
 end
end


def run(songs)
  puts "Please enter a command:"
  while true do
    command = gets.strip
    if command == "play"
      play(songs)
    elsif command == "help"
      help
    elsif command == "list"
      list(songs)
    elsif command == "exit"
      exit_jukebox
      break
    end
  end
end