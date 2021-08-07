class CreateNewsItems < ActiveRecord::Migration[5.1]
  def change
    create_table :news_items do |t|
      t.string :title
      t.text :content
      t.text :url

      t.timestamps
    end

    add_index :news_items, :title
  end
end
