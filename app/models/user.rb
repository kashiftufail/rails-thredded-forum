class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true,
  uniqueness: {    
    message: ->(object, data) do
      "Hey #{object.name}, #{data[:value]} is already taken."
    end
  }       
       
end
