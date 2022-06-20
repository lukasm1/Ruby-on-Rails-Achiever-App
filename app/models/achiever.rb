class Achiever < ApplicationRecord	
	has_many :achiever_habits, dependent: :destroy
	has_many :habits, through: :achiever_habits, dependent: :destroy

	has_many :achiever_book_recommendations, dependent: :destroy
	has_many :book_recommendations, through: :achiever_book_recommendations

	has_many :quotes, dependent: :destroy
	belongs_to :user

	validates :name, :area_of_expertise, presence: true

end
