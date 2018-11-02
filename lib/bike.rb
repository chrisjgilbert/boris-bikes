class Bike
  attr_reader :working
  def initialize(working=true)
    @working = working
  end

  def report_as_not_working
    @working = false
    self
  end

end
