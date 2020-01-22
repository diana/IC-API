class CreateAttempts < ActiveRecord::Migration[6.0]
  def change
    create_table :attempts do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
    
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
