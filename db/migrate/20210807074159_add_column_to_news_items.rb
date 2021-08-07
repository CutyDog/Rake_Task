class AddColumnToNewsItems < ActiveRecord::Migration[5.1]
  def change
    add_column :news_items, :category, :string, null: false
  end
end
