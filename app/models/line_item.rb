class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart
  
  attr_accessible :product_id, :cart_id
end
