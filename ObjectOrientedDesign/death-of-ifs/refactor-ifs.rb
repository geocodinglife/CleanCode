# class MicroBlogger
#   def start
#     command = ""
#     while command != "q"
#       print "enter command: "
#       command = gets.chomp
#       process(command)
#     end
#   end
#
#   def process(input)
#     if input == "q"
#       puts "Goodbye"
#     elsif input == "tweet"
#       puts "tweeting"
#     elsif input == "dm"
#       puts "direct messaging"
#     elsif input == "help"
#       puts "helping"
#     end
#   end
# end
#
#
#



# first step
# def quite_command_match?(input)
#   input == "q"
# end
#
# def quite_command_execute
#   puts "Goodbye"
# end


# second step(note the change on the name of the methos they are short)
require 'pry'
class MicroBloger
  class QuitCommand
    def match?(input)
      input == "q"
    end

    def execute
      puts "Goodbye"
    end
  end

  class TweetCommand
    def match?(input)
      input == "tweeting"
    end

    def execute
      puts "tweet"
    end
  end

  class DirectMessageCommand
    def match?(input)
      input == "derict message"
    end

    def execute
      puts "direct messaching"
    end
  end

  class HelpCommand
    def match?(input)
      input == "help"
    end

    def execute
      puts "helping"
    end
  end

  def process(input)
    quit = QuitCommand.new
    tweet = TweetCommand.new
    direct_message = DirectMessageCommand.new
    help = HelpCommand.new


    if quit.match?(input)
      quit.execute
    elsif tweet.match?(input)
      tweet.execute
    elsif direct_message.match?(input)
      direct_message.execute
    elsif help.match?(input)
      help.execute
    end
  end
end


sample = MicroBloger.new
sample.process "help"






