class Quote < ApplicationRecord
  belongs_to :achiever
  belongs_to :user

  validates :text, :achiever_id, presence: true

end
