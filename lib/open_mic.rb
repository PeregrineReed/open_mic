class OpenMic

  attr_reader :location

  def initialize(time_and_place)
    @location = time_and_place[:location]
  end

end
