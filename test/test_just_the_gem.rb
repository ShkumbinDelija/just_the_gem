require 'minitest/autorun'
require_relative '../lib/just_the_gem'

class JustTheGemTest < Minitest::Test
  def test_bare_bones
    assert_equal(JustTheGem.bare_bones, 'bare_bones')
  end
end
