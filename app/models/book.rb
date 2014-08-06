class Book < ActiveRecord::Base
  validates :isbn,
    presence: true,
    uniqueness: true
  validates :book_name,
    presence: true,
    length:{ maximum: 50 }
end
