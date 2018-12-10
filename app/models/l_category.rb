class LCategory < ApplicationRecord
  belongs_to :items
  has_many :m_categories
end
