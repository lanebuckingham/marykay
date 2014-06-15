class Customer
  include Mongoid::Document  

  field :firstname,        :type => String, :default => ""
  field :lastname,         :type => String, :default => ""
  field :email,            :type => String, :default => ""
  field :address1,         :type => String, :default => ""
  field :address2,         :type => String, :default => ""
  field :city,             :type => String, :default => ""
  field :state,            :type => String, :default => ""
  field :zip,              :type => String, :default => ""
  field :phone,            :type => String, :default => ""
  field :birthdate,        :type => DateTime

  has_many :order_items
  has_one :account, autobuild: true

end


