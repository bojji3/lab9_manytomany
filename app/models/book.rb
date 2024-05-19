class Book < ApplicationRecord
    has_many :authorships
    has_many :authors, through: :authorships
    has_many :book_libraries
    has_many :libraries, through: :book_libraries
end
