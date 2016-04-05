class Component < ActiveRecord::Base
  belongs_to :article
  has_many :creators
  has_many :data_sources
  has_many :design_elements
end
