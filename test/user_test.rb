require "minitest/autorun"
require "minitest/pride"
require "./lib/joke"
require "./lib/user"

class UserTest < Minitest::Test

  def setup
    @sal = User.new("Sal")
    @ali = User.new("Ali")
  end

  def test_it_exists
    assert_instance_of User, @sal
  end

end
