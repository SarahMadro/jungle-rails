require 'rails_helper'

RSpec.feature "AddToCarts", type: :feature do

  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
        name:  Faker::Hipster.sentence(3),
        description: Faker::Hipster.paragraph(4),
        image: open_asset('apparel1.jpg'),
        quantity: 10,
        price: 64.99
      )
    end

    scenario 'Can add item to cart from the home page by clicking "Add to Cart"' do

      visit root_path
      expect(page.has_css?('a', text: 'My Cart (0)')).to eq true
      click_on 'Add'
      expect(page.has_css?('a', text: 'My Cart (1)')).to eq true

    end
  end
end
