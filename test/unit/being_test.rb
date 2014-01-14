require 'test_helper'

class BeingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Being.new.valid?
  end
end
