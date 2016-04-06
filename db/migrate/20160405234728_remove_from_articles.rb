class RemoveFromArticles < ActiveRecord::Migration
  def change
    add_column :articles, :descripion, :text
    remove_column :articles, :creator_designer
    remove_column :articles, :creator_author
    remove_column :articles, :creator_data_wrangler
    remove_column :articles, :creator_programmer
    remove_column :articles, :creator_researcher
    remove_column :articles, :creator_fact_checker
    remove_column :articles, :creator_copy_editor
    remove_column :articles, :creator_others
  end
end
