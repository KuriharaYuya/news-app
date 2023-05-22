class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :url
      t.boolean :archived, default: false
      t.timestamps
    end
  end
end
