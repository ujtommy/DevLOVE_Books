class CreateBooks < ActiveRecord::Migration
  def self.up
    create_table :books do |t|
      t.string :isbn
      t.string :title
      t.string :author
      t.date :release_on
      t.integer :price
      t.integer :publisher_id
      t.text :content
      t.integer :page
      t.string :image_url
      t.text :index
      t.string :view_status

      t.timestamps
    end
  end

  def self.down
    drop_table :books
  end
end
