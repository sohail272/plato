class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
    	t.integer :customer_id
      t.string :customer_type
      t.float :amount
      t.string :status
      t.integer :plan_id
      t.datetime :charge_date
      t.datetime :due_date

      t.timestamps
    end
  end
end
