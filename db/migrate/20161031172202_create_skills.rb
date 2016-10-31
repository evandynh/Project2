class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.references :category, foreign_key: true
      t.float :price
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
