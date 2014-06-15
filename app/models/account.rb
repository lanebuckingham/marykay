class Account
  include Mongoid::Document  

  belongs_to :customer
  embeds_many :transactions
  accepts_nested_attributes_for :transactions

end


