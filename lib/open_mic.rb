class OpenMic

  attr_reader :location,
              :date

  def initialize(time_and_place)
    @location = time_and_place[:location]
    @date = time_and_place[:date]
  end

end
