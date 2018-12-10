class MCategory < ApplicationRecord
  belongs_to :items
  belongs_to :l_categories
  has_many :s_categories
end
