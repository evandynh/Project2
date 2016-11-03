class RemoveSkillFromMessages < ActiveRecord::Migration[5.0]
  def change
    remove_column :messages, :skill_id, :string
  end
end
