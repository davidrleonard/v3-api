class CreateDesignElements < ActiveRecord::Migration
  def change
    create_table :design_elements do |t|
      t.belongs_to :component, index: true
      t.timestamps null: false
    end
  end
end
