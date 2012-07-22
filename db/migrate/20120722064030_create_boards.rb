class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :state_id
      t.integer :category_id
      t.boolean :show

      t.timestamps
    end
  end
end
