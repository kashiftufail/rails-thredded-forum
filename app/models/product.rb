class Product < ApplicationRecord
  belongs_to :user

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "isbn", "price", "status", "title", "updated_at", "user_id"]
  end

end
