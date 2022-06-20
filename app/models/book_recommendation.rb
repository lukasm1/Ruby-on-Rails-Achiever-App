class BookRecommendation < ApplicationRecord
	has_many :achiever_book_recommendations, dependent: :destroy
	has_many :achievers, through: :achiever_book_recommendations
	belongs_to :user

	accepts_nested_attributes_for :achiever_book_recommendations

	validates :title, :author, presence: true
	validates_associated :achiever_book_recommendations
end
