class Restaurant < ApplicationRecord
    has_many :items, dependent: :destroy 
    validates :name, presence: true
    validates :address, presence: true 
end
