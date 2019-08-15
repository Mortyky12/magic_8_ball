require "colorize"

class Magic 
  def initialize
    menu
  end

  def menu 
    puts "---Welcome to the Magic 8 Ball!---".colorize(:purple)
    puts "1) Type 1 to ask a question and get your future.".colorize(:cyan)
    puts "2) Type 2 to end the program".colorize(:cyan)
    print ">"
    choice = gets.to_i
    case choice
    when 1
      puts "Ask Away!!".colorize(:green)
      print ">"
      puts_(gets.strip)
      menu 
    when 2
      exit
    else 
      puts "Invalid Input".colorize(:red)
      sleep (2)
      print `clear`
      menu
    end
  end
end

Magic.new
