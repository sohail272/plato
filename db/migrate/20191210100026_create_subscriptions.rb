class CreateSubscriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :subscriptions do |t|
    	t.integer :plan_id
      t.integer :subscriber_id
      t.string :subscriber_type
      t.datetime :start_date

      t.timestamps
    end
  end
end
