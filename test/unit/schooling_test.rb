require 'test_helper'

class SchoolingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Schooling.new.valid?
  end
end
