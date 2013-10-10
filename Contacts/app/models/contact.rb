class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :user_id, :favorited

  belongs_to :user

  has_many :contact_shares

  has_many :contact_groups

  has_many :groups, :through => :contact_groups

  has_many :comments

  def self.contacts_for_user_id(user_id)
    self.find_by_sql([<<-SQL, user_id, user_id])
      SELECT contacts.*
      FROM contacts LEFT OUTER JOIN contact_shares
      ON contacts.id = contact_shares.contact_id
      WHERE contact_shares.user_id = ?
      OR contacts.user_id = ?
    SQL
  end

  def self.favorites_for_user_id(user_id)
    user = User.find(user_id)

    user.contacts.where(:favorited => true)
  end

  def comment_for_user_id(user_id)
    self.comments.where(:user_id => user_id)
  end
end
