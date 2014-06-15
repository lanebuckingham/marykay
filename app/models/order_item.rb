class OrderItem
  include Mongoid::Document  

  field :quantity,    :type => Integer, :default => 0
  field :price,       :type => Float,   :default => 0
  field :discount,    :type => Float,   :default => 0

  belongs_to :customer
  belongs_to :product
  belongs_to :order

end


