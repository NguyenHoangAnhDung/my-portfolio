class CreatePortfolios < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.integer :user_id
      t.string :description

      t.timestamps
    end
  end
end
