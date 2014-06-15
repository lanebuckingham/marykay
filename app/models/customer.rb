class Customer
  include Mongoid::Document  
  
  field :custid,           :type => String, :default => ""
  field :firstname,        :type => String, :default => ""
  field :lastname,         :type => String, :default => ""
  field :email,            :type => String, :default => ""
  field :address1,         :type => String, :default => ""
  field :address2,         :type => String, :default => ""
  field :city,             :type => String, :default => ""
  field :state,            :type => String, :default => ""
  field :zip,              :type => String, :default => ""
  field :homephone,        :type => String, :default => ""
  field :cellphone,        :type => String, :default => ""
  field :birthdate,        :type => Time
  field :level,            :type => Integer, :default => 0

	embeds_many :orders
  accepts_nested_attributes_for :orders

end


