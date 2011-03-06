class CreateReviews < ActiveRecord::Migration
  def self.up
    create_table :reviews do |t|
      t.integer :isbn
      t.string :title
      t.string :reviewer
      t.integer :rank
      t.string :status
      t.text :content
      t.string :blog_entry
      t.text :index

      t.timestamps
    end
  end

  def self.down
    drop_table :reviews
  end
end
