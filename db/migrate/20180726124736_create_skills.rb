class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :portfolio_id
      t.integer :technology_id

      t.timestamps
    end
  end
end
