require "colorize"

class Magic 
  def initialize
    menu
  end

  def menu 
    puts "---Welcome to the Magic 8 Ball!---".colorize(:purple)
    puts "1) Type 1 to ask a question and get your future."
    puts "2) Type 2 to end the program"
    print ">"
    choice = gets.to_i
    case choice
    when 1
      puts "Ask Away!!"
      print ">"
      puts_(gets.strip)
      menu 
    when 2
      exit
    else 
      puts "Invalid Input"
      sleep (2)
      print `clear`
      menu
    end
  end
end

Magic.new
