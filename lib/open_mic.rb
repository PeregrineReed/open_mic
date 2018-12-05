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

  def repeated_jokes?
    all_jokes = []

    @performers.each do |user|
      all_jokes << user.jokes.each {|joke| joke }
    end

    uniq_jokes = all_jokes.uniq do |joke|
      joke.id
    end
    if all_jokes.length >= uniq_jokes.length
      true
    else
      false
    end

  end

end
