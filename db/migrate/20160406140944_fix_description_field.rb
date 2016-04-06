class FixDescriptionField < ActiveRecord::Migration
  def change
    remove_column :articles, :descripion
    add_column :articles, :description, :text
  end
end
