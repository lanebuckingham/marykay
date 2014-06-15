class Transaction
  include Mongoid::Document  

  field :transtype,       :type => Integer, :default => 0
  field :date,            :type => DateTime
  field :amount,          :type => Float,   :default => 0

  embedded_in :account
  belongs_to :order

end


