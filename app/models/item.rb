class Item < ApplicationRecord
    belongs_to :dish
    belongs_to :restaurant
    validates :name, presence: true
    validates :price, presence: true, numericality: { greater_than: 0 }
    validates :callories, presence: true, numericality: { greater_than: 0 }

end
