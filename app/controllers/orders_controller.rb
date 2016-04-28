class OrdersController < ApplicationController
  before_filter :find_party

  def show
    @order = @party.order
  end

  def edit
    @order = @party.order

    menu_items = MenuItem.all

    @menu = menu_items.group_by{|item| item.kind}
  end

  def update
    @order = Order.new(params[:order])
  end

  def add_menu_item
    menu_item = MenuItem.find params[:menu_item_id]

    @party.order.menu_items << menu_item if menu_item

    redirect_to action: :edit
  end

  def remove_menu_item
    line_item = MenuItemsOrders.where(order: @party.order, menu_item: params[:menu_item_id]).first
    
    line_item.destroy if line_item
 
    redirect_to action: :edit
  end

  private

  def find_party
    @party ||= Party.find params[:party_id]
  end
end
