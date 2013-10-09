class ContactShare < ActiveRecord::Base
  attr_accessible :contact_id, :user_id

  validates [:user_id, :contact_id], :uniqueness => true

  belongs_to :user

  belongs_to :contact
end
