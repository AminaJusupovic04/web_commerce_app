# app/models/product.rb
class Product < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    attribute :reviews, :text
    has_many :orderables
    has_many :carts, through: :orderables

end
  
  
  