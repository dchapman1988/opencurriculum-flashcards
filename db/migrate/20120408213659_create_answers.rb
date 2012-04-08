class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :card_id
      t.boolean :correct

      t.timestamps
    end
  end
end
