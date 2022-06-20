class AchieverHabit < ApplicationRecord
  belongs_to :achiever
  belongs_to :habit

end
