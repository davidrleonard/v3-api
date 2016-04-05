class AddToDataSource < ActiveRecord::Migration
  def change
    add_column :data_sources, :dataset_organization_name, :string
    add_column :data_sources, :dataset_url, :string
    add_column :data_sources, :dataset_name, :string
    add_column :data_sources, :dataset_source_file_url, :string
    add_column :data_sources, :dataset_file_format_tags, :string
    add_column :data_sources, :dataset_reproduction_instructions, :string
    add_column :data_sources, :dataset_choice_details, :string
    add_column :data_sources, :dataset_additional_details, :string
  end
end
