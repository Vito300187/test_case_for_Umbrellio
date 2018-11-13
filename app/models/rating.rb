class Rating < ApplicationRecord
  belongs_to :post, dependent: :destroy
  validates :evaluation, inclusion: { in: 1..5, message: "%{value} is not a valid rating" }
end
