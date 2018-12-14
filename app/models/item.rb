class Item < ApplicationRecord
  belongs_to :user
  has_many :images, dependent: :destroy
  has_one :lcategory, dependent: :destroy
  has_one :mcategory, dependent: :destroy
  has_one :scategory, dependent: :destroy
  has_one :brand, dependent: :destroy
  accepts_nested_attributes_for :images
end
