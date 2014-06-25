class Rwath
  class Process
    def initialize(command)
      @command = command
    end

    def split_exec(text)
      output = IO.popen(@command, "r+") {|io|
        io.puts text
        io.close_write
        io.gets
      }
      output.chomp
    end
  end
end
