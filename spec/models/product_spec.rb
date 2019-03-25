require 'rails_helper'

RSpec.describe Product, type: :model do

  before :each do
    @category = Category.create!(name: 'purplePeopleEater')
    @product = @category.products.create!(
      name: 'HungryHippo',
      price: 100,
      quantity: 1
      )
  end

  describe 'Validations' do
    it 'is not valid without a name' do
    @product.name = nil
    expect(@product).to_not be_valid
    end

    it 'must have a price to be valid' do
    @product.price_cents = nil
    expect(@product).to_not be_valid
    end

    it 'is not valid without a quantity' do
      @product.quantity = nil
      expect(@product).to_not be_valid
    end

    it 'must have a category name to be valid' do
      @product.category = nil
      expect(@product).to_not be_valid
    end
  end
end