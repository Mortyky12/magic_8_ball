require "colorize"

class Magic 
  def initialize
    @answers = [
      "It is Certain",
      "Outlook Not Good",
      "Without a Doubt",
      "Don't Count on It",
      "Yes",
      "No"
    ]  
    menu
  end


  def menu 
    puts "---Welcome to the Magic 8 Ball!---".colorize(:blue)
    puts "1) Type 1 to ask a question and get your future.".colorize(:cyan)
    puts "2) Type 2 to end the program".colorize(:cyan)
    print ">"
    choice = gets.strip.to_i
    case choice
    when 1
      puts "Ask Away!!".colorize(:green)
      print ">"
      gets.strip
      puts @answers.sample
      menu 
    when 2
      puts "Goodbye :("
      exit
    # when "strawberry"
     # puts "What would you like to add?".colorize(:red)
      # print ">"
      # addition = gets.strip.to_i 
      # case addition
      # if 
      # addition = ["It is Certain", "Outlook Not Good", "Without a Doubt", "Don't Count on It", "Yes", "No"]
      # puts "Enter something else :)"
      # 
      # else
      # 
      # 
      # save it to a variable
      # check (iterate through) array to see if their answer is already in array
      # if/else statement to handle if its there or if it isn't (add to array)
    else 
      puts "Invalid Input".colorize(:red)
      sleep (2)
      print `clear`
      menu
    end
  end
end

Magic.new
