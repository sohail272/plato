class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
    	t.integer :board_id
      t.text :title, :limit => 288
      t.text :description
      
      t.timestamps
    end
  end
end
