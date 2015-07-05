class AddForeignKeyToPackages < ActiveRecord::Migration
  def change
    add_column :packages, :collection_id, :integer
    add_foreign_key :packages, :collections
  end
end
