class CreateContactGroups < ActiveRecord::Migration
  def change
    create_table :contact_groups do |t|
      t.integer :group_id, :null => false
      t.integer :contact_id, :null => false

      t.timestamps
    end
  end
end
