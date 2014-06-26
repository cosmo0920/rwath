require "rwath/process"
require "rwath/config"
require "rwath/version"

class Rwath
  def initialize(config: Config.new)
    @process = Process.new("swath #{config.to_s}")
  end

  def split(text)
    @process.split_exec(text)
  end
end
