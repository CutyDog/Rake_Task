class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.integer :user_id, nul: false
      t.boolean :domestic, default: false
      t.boolean :world, default: false
      t.boolean :business, default: false
      t.boolean :entertainment, default: false
      t.boolean :sports, default: false
      t.boolean :it, default: false
      t.boolean :science, default: false
      t.timestamps
    end
  end
end
