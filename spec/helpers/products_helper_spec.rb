require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the ProductsHelper. For example:
#
# describe ProductsHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe ProductsHelper, type: :helper do
  it "adds items to the cart when they're submitted via its form" do
    visit '/'
    fill_in 'product', with: 'kumquats'
    click_button 'add to cart'
    expect(page.body).to include 'kumquats'
  end
end
