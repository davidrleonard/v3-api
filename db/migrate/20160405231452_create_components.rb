class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.belongs_to :article, index: true
      t.timestamps null: false
    end
  end
end
