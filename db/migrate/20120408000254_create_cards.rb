class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :name
      t.text :front_content
      t.text :back_content
      t.integer :deck_id

      t.timestamps
    end
  end
end
