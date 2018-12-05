require "minitest/autorun"
require "minitest/pride"
require "./lib/joke"

class JokeTest < Minitest::Test

  def setup
    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")

    @joke_2 = Joke.new(2, "How to you stop a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of Joke, @joke_1
  end

  def test_it_has_an_id
    assert_equal 1, @joke_1.id
  end

end
