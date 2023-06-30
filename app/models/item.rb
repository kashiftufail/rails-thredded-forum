class Item < ApplicationRecord
  belongs_to :product

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "name", "product_id", "updated_at"]
  end

end
