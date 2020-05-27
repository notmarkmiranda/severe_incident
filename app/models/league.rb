class League < ApplicationRecord
  validates_uniqueness_of :name
end
