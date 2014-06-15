class Product
  include Mongoid::Document  

  field :name,      :type => String, :default => ""
  field :price,     :type => Float,  :default => 0

  has_many :order_items

end


