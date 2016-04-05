class AddToCreators < ActiveRecord::Migration
  def change
    add_column :creators, :name, :string
    add_column :creators, :role, :string
  end
end
