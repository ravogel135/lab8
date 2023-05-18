class StaticPagesController < ApplicationController
    def home ; 
        @top_restaurants = Restaurant.includes(:items).order(items_count: :desc).limit(3)
    end
   
end