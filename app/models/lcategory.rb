class Lcategory < ApplicationRecord
  belongs_to :items
  has_many :mcategories
end
