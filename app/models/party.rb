class Party < ActiveRecord::Base
  belongs_to :user
  has_one :order

  after_create :create_order

  private

  def create_order
    Order.create(party: self)
  end
end
