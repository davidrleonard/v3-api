class AddToComponent < ActiveRecord::Migration
  def change
    add_column :components, :title, :string
    add_column :components, :description, :text
    add_column :components, :selection_hash, :string

    add_column :components, :tools_visualization_used_tags, :string
    add_column :components, :tools_publication_used_tags, :string
    add_column :components, :tools_platform_designed_for_tags, :string
    add_column :components, :tools_additional_details, :string

    add_column :components, :design_graphic_type, :string
    add_column :components, :design_graphic_choice_details, :string

    add_column :components, :design_interactive_tags, :string
    add_column :components, :design_usability_testing_details, :string
    add_column :components, :design_additional_details, :string
  end
end
