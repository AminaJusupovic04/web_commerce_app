# db/migrate/[timestamp]_add_reviews_to_products.rb

class AddReviewsToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :reviews, :text
  end
end
