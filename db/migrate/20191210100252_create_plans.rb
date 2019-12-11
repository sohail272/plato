class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
    	t.string :name
      t.float :monthly_cost, default: 0.0
      t.integer :licenses, default: 1
      t.float :monthly_annual_cost, default: 0.0
      t.float :extra_user_cost, default: 0.0
      t.string :plan_type
      t.string :status, default: "inactive"

      t.timestamps
    end
  end
end
