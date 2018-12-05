require "minitest/autorun"
require "minitest/pride"
require "./lib/joke"
require "./lib/user"

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")

    @joke_1 = Joke.new(1, "Why did the strawberry cross the road?", "Because his mother was in a jam.")
    @joke_2 = Joke.new(2, "How to you stop a lion from charging?", "Take away its credit cards.")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

  def test_it_has_a_name
    assert_equal "Sal", @sal.name
  end

  def test_it_has_jokes
    assert_empty @sal.jokes
  end

  def test_it_can_learn_jokes
    @sal.learn(@joke_1)
    @sal.learn(@joke_2)
    all_jokes = @sal.jokes.all? do |joke|
      joke.class == Joke
    end

    assert_equal true, all_jokes
  end

end
