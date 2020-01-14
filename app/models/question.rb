class Question < ApplicationRecord
    belongs_to :survey
    has_many :answers
    validates :query, presence: true, uniqueness: true
end
