require 'minitest/autorun'
require 'konfident'
require 'pry-byebug'

class KonfidentTest < Minitest::Test
  def test_raise_an_error_when_git_repository_does_not_exist
    assert_raises RuntimeError do
      Konfident.error_with_git_repository
    end
  end
end