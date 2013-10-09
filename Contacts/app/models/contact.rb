class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :user_id

  belongs_to :user

  has_many :contact_shares

  def self.contacts_for_user_id(user_id)
    self.find_by_sql([<<-SQL, user_id, user_id])
      SELECT contacts.*
      FROM contacts LEFT OUTER JOIN contact_shares
      ON contacts.id = contact_shares.contact_id
      WHERE contact_shares.user_id = ?
      OR contacts.user_id = ?
    SQL
  end
end
