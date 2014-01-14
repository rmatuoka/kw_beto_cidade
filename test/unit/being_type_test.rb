require 'test_helper'

class BeingTypeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert BeingType.new.valid?
  end
end
