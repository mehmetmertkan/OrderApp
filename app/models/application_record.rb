class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  validates :category, :presence => true
end
