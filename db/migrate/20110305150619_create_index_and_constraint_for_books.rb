require 'migration_helper'
class CreateIndexAndConstraintForBooks < ActiveRecord::Migration
  extend MigrationHelper
  def self.up
    add_index :books, :publisher_id
    foreign_key :books, :pubisher_id, :publishers
  end

  def self.down
    remove_index :books, :publisher_id
    drop_foreign_key :books, :pubisher_id, :publishers
  end
end
