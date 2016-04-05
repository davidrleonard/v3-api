class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.string :creator_designer
      t.string :creator_author
      t.string :creator_data_wrangler
      t.string :creator_programmer
      t.string :creator_researcher
      t.string :creator_fact_checker
      t.string :creator_copy_editor
      t.string :creator_others

      t.timestamps null: false
    end
  end
end
