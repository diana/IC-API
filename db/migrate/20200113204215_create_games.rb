class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.references :user
      t.string :title
      t.string :intro
      t.string :video

      t.timestamps
    end
  end
end
