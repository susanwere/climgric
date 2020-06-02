class CombineItemsInCart < ActiveRecord::Migration[5.2]
  def up
    # replace multiple items for a single berry in a cart with a
    # single item
    Cart.all.each do |cart|
      # count the number of each berry in the cart
      sums = cart.line_items.group(:berry_id).sum(:quantity)
      sums.each do |berry_id, quantity|
        if quantity > 1
          # remove individual items
          cart.line_items.where(berry_id: berry_id).delete_all
          # replace with a single item
          item = cart.line_items.build(berry_id: berry_id)
          item.quantity = quantity
          item.save!
        end
      end
    end
  end

  def down
    # split items with quantity>1 into multiple items
    LineItem.where("quantity>1").each do |line_item|
      # add individual items
      line_item.quantity.times do
      LineItem.create(
      cart_id: line_item.cart_id,
      berry_id: line_item.berry_id,
      quantity: 1
      )
      end
      # remove original item
      line_item.destroy
    end
  end
end
