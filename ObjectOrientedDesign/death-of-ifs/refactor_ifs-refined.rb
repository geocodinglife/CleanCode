class MicroBloger
  def commands
    quit = QuitCommand.new
    tweet = TweetCommand.new
    direct_message = DirectMessageCommand.new
    help = HelpCommand.new
    no_action = NoActionCommand.new

     commands = [quit, tweet, direct_message, help, no_action]
  end

  def command_for_input(input)
   found_command = commands.find {|command| command.match?(input) }
  end

  def process(input)
   command_for_input(input).execute
  end
end


  class Command
    attr_reader :specified_input, :specified_output
    def initialize(specified_input, specified_output)
      @specified_input = specified_input
      @specified_output = specified_output
    end

    def match?(input)
      input == specified_input
    end

    def execute
      puts specified_output
    end
  end
    
  class QuitCommand
    def specified_input
      input =~ /^(q|quit)$/i 
    end

    def match?(input)
      input == specified_input  
    end

    def specified_output
      "Goodbye"
    end

    def execute
      puts specified_output  
    end
  end

  class TweetCommand
    def match?(input)
      input == specified_input
    end

    def execute
      puts specified_output 
    end
  end

  class DirectMessageCommand
    def match?(input)
      input == specified_input
    end

    def execute
      puts specified_output 
    end
  end

  class HelpCommand
    def match?(input)
      input == specified_input
    end

    def execute
      puts specified_output 
    end
  end

  class NoActionCommand
    def match?(input)
      true
    end

    def execute
    end
  end

sample = MicroBloger.new 


sample(Class.new "tweet")
