class OpenMic

  attr_reader :location,
              :date,
              :performers

  def initialize(time_and_place)
    @location = time_and_place[:location]
    @date = time_and_place[:date]
    @performers = []
  end

  def welcome(performer)
    @performers << performer
  end

end
