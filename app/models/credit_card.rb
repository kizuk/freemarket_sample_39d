class CreditCard < ApplicationRecord
  belongs_to :user
  validates :number, :expire, :security
end
