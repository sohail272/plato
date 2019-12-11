class CreateOrganizationUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :organization_users do |t|
    	t.integer :user_id
      t.integer :organization_id

      t.timestamps
    end
    add_index :organization_users, [:user_id, :organization_id], name:  "organization_user_index",:unique => true
  end
end
