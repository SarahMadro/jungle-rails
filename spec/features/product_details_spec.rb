require 'rails_helper'

RSpec.feature "ProductDetails", type: :feature, js: true do

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
  end

  scenario 'Users can navigate to product detail by clicking on product' do

    visit root_path
    find_link(Product.first.name, href: product_path(Product.first.id)).click
    save_screenshot

    # VERIFY
expect(page).to have_text(Product.first.name)
  end


end
