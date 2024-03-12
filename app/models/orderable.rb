class Orderable < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total
    return 0 unless product && quantity
    product.price * quantity
  end
end

