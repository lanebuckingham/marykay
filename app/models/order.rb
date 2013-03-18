class Order
  include Mongoid::Document  

  field :orderid,           :type => String, :default => ""
  field :archived,          :type => Boolean, :default => false
  field :orderdate,        :type => Time

  embedded_in :customer

end
