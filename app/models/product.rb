# app/models/product.rb
class Product < ApplicationRecord
    has_many :likes, dependent: :destroy
    attribute :reviews, :text

end
  
  
  