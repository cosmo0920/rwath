require "rwath/process"
require "rwath/version"

class Rwath
  def initialize(delimitor: '|')
    @process = Process.new("swath -u u,u -b \"#{delimitor}\"")
  end

  def split(text)
    @process.split_exec(text)
  end
end
