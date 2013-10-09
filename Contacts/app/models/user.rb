class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_many :contacts

  has_many :contact_shares
end
