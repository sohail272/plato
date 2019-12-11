class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
    	t.integer :card_id
      t.boolean :completed, default: false
      t.text :description, :limit => 288

      t.timestamps
    end
  end
end
