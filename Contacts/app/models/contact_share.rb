class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :user_id

  validates_uniqueness_of :user_id, :scope => :contact_id

  belongs_to :user

  belongs_to :contact
end
