class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :user
      t.string :title
      t.text :content
      t.string :postimage
      t.timestamps null: false
    end
  end
end
