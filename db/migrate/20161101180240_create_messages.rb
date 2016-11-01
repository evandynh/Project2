class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.text :content
      t.references :skill, foreign_key: true
      t.references :to, foreign_key: { to_table: :users}
      t.references :from, foreign_key: { to_table: :users}

      t.timestamps
    end
  end
end
