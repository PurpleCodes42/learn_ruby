class Timer
  def initialize
    @seconds = 0
  end
 
  # die beiden folgen methoden können auch als attr:accessor :seconds gecoded werden
  def seconds 
    @seconds
  end

  def seconds=(seconds)
    @seconds = seconds
  end

  def time_string
  Time.at(@seconds).utc.strftime("%H:%M:%S")
  end
end

