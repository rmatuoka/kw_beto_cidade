require 'test_helper'

class ProdutosTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Produtos.new.valid?
  end
end
