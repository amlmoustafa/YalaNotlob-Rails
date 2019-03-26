class Order < ApplicationRecord
    validates :restaurant_name, presence: true,
                    length: { minimum: 5 }
    has_many :order_details
    has_many :orders_users
    
     belongs_to :user
  
    mount_uploader :menu_image, ImageUploader
end
