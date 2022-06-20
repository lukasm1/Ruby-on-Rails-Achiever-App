class Habit < ApplicationRecord
	has_many :achiever_habits, dependent: :destroy
	has_many :achievers, through: :achiever_habits
	belongs_to :user

	accepts_nested_attributes_for :achiever_habits

	validates :name, :frequency, :time_demand, presence: true
	validates_associated :achiever_habits
end
