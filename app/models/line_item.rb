class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  
  attr_accessible :product_id, :cart_id, :quantity
  
  def total_price
    product.price * quantity
  end
end
