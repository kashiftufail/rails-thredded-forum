class Product < ApplicationRecord
  belongs_to :user

  has_many :items

  def self.ransackable_attributes(auth_object = nil)
    ["body", "created_at", "id", "isbn", "price", "status", "title", "updated_at", "user_id"]
  end

  def self.ransackable_associations(auth_object = nil)
    ["items", "user"]
  end

end
