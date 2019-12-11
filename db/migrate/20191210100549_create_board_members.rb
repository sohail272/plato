class CreateBoardMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :board_members do |t|
    	t.integer :project_id
      t.integer :board_id
      t.integer :member_id

      t.timestamps
    end
    add_index :board_members, [:project_id, :board_id, :member_id], name:  "board_member_index",:unique => true
  end
end
