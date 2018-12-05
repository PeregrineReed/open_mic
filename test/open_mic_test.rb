require "minitest/autorun"
require "minitest/pride"
require "./lib/open_mic"
require "./lib/user"
require "./lib/joke"

class OpenMicTest < Minitest::Test

  def setup
    @open_mic = OpenMic.new({location: "Comedy Works", date: "11-20-18"})

    @sal = User.new("Sal")
    @ali = User.new("Ali")

    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How to you stop a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of OpenMic, @open_mic
  end

  def test_it_has_a_location
    assert_equal "Comedy Works", @open_mic.location
  end

  def test_it_has_a_date
    assert_equal "11-20-18", @open_mic.date
  end

  def test_it_has_room_for_performers
    assert_empty @open_mic.performers
  end

  def test_it_welcomes_performers
    @open_mic.welcome(@sal)
    @open_mic.welcome(@ali)
    assert_equal [@sal, @ali], @open_mic.performers
  end

  def test_repeated_jokes_are_recognized
    @ali.learn(@joke_1)
    @ali.learn(@joke_2)
    assert_equal false, @open_mic.repeated_jokes?
    @ali.tell(@sal, @joke_1)
    assert_equal true, @open_mic.repeated_jokes?
  end

end
