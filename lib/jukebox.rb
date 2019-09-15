require "pry"
=begin
def say_hello(name)
  "Hi #{name}!"
end

puts "Enter your name:"
users_name=gets.strip

puts say_hello(users_name)
=end

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help 
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play next"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  input=gets.strip
  if songs.any?input
    puts "Playing #{input}"
  elsif input.to_i > 0 && input.to_i <= songs.length
    puts "Playing #{songs[input.to_i-1]}"
  else
    puts "Invalid input, please try again"
  end
=begin
  songs.each_with_index do |item,index|
    index=(index+1).to_s
    if input == index
      puts "Playing #{item}"
    elsif songs.include?input
      puts "Playing #{input}"
    else
      puts "Invalid input, please try again"
    end
=end
end


def list(songs)
  songs.each_with_index{|item,index| puts "#{index+1}. #{item}"}
end

def exit_jukebox
  puts "Goodbye"
end

####
=begin
def run(songs)
  puts "Please enter a command:"
  input=gets.strip
  case input
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "help"
      help
    when "exit"
      return exit_jukebox
  end
end
=end

def run(songs)
  while true do
    puts "Please enter a command:"
    response = gets.chomp
    case response
    when "exit"
      exit_jukebox
      break
    when "play"
      play(songs)
    when "help"
      help
    when "list"
      list(songs)
    else
      puts "Invalid entry"
    end
  end
end





