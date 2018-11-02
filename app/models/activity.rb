class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :book
  enum status: {read: 0, reading: 1, favorite: 2}
end
