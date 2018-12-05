class User

  attr_reader :name

  attr_accessor :jokes

  def initialize(name)
    @name = name
    @jokes = []
  end

  def learn(joke)
    @jokes << joke
  end

  def tell(audience, joke)
    audience.jokes << joke
  end

end
