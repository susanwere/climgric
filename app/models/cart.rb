class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy

  def add_berry(berry)
    current_item = line_items.find_by(berry_id: berry.id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(berry_id: berry.id)
    end
    current_item
  end
end
