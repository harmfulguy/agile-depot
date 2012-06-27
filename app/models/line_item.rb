class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  belongs_to :order
  
  attr_accessible :product_id, :cart_id, :quantity
  
  def total_price
    product.price * quantity
  end
end
