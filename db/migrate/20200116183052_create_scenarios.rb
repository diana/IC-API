class CreateScenarios < ActiveRecord::Migration[6.0]
  def change
    create_table :scenarios do |t|
      t.string :title
      t.text :description
      t.string :image

      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
