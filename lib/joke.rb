class Joke

  attr_reader :id,
              :setup

  def initialize(id, setup, punchline)
    @id = id
    @setup = setup
  end

end
