class Mcategory < ApplicationRecord
  belongs_to :items
  belongs_to :lcategories
  has_many :scategories
end
