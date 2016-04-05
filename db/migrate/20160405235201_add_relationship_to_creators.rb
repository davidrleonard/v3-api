class AddRelationshipToCreators < ActiveRecord::Migration
  def change
    change_table :creators do |t|
      t.belongs_to :component, index: true
    end
  end
end
