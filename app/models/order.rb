class Order
  include Mongoid::Document  

  field :ordernum,          :type => Integer, :default => 0
  field :date_submitted,    :type => DateTime

  has_many :order_items
  has_many :transactions

end
