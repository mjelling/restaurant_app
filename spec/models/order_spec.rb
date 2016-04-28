require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'should display order total' do
    item1 = MenuItem.create(name: 'Beer', kind: 'Appetizer', price: 5.50)
    item2 = MenuItem.create(name: 'Nachos', kind: 'Appetizer', price: 3.50)

    party = Party.create(name: 'Test')
    order = Order.create(party: party)

    order.menu_items << item1
    order.menu_items << item1
    order.menu_items << item2

    expect(order.total_price).to eq 14.50
  end
end
