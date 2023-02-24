require 'minitest/autorun'
require_relative '../lib/bare_bones'

class BareBonesTest < Minitest::Test
  def test_bare_bones
    assert_equal(BareBones.bare_bones, 'bare_bones')
  end
end
