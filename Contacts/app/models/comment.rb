class Comment < ActiveRecord::Base
  attr_accessible :body, :contact_id, :user_id

  belongs_to :user
  belongs_to :contact
end
