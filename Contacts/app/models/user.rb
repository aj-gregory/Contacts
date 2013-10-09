class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates :name, :email, :presence => true
  validates :email, :uniqueness => true

  has_many :contacts

  has_many :contact_shares

  has_many :groups

  def get_favorites
    Contact.favorites_for_user_id(self.id)
  end
end
