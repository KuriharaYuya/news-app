class CreateBookmarks < ActiveRecord::Migration[7.0]
  def change
    create_table :bookmarks do |t|
      t.boolean :archived, default: false
      t.integer :article_id
      t.timestamps
    end
  end
end
