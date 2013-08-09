require 'test_helper'

class EntityTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Entity.new.valid?
  end
end
