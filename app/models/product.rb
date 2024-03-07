# app/models/product.rb
class Product < ApplicationRecord
    has_many :likes, dependent: :destroy
    has_many :comments, dependent: :destroy
    attribute :reviews, :text

end
  
  
  