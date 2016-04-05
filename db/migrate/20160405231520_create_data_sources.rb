class CreateDataSources < ActiveRecord::Migration
  def change
    create_table :data_sources do |t|
      t.belongs_to :component, index: true
      t.timestamps null: false
    end
  end
end
