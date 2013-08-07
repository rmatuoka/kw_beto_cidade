require 'test_helper'

class SupplyTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Supply.new.valid?
  end
end
