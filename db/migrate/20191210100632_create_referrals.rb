class CreateReferrals < ActiveRecord::Migration[5.2]
  def change
    create_table :referrals do |t|
    	t.integer :referee_id
      t.integer :referrer_id

      t.timestamps
    end
    add_index :referrals, [:referee_id, :referrer_id], name:  "referrals_index",:unique => true
  end
end
