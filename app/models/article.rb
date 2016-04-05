class Article < ActiveRecord::Base
  has_many :components, dependent: :destroy
end
