class Group < ActiveRecord::Base
  attr_accessible :name, :user_id

  belongs_to :user

  has_many :contact_groups

  has_many :contacts, :through => :contact_groups
end
