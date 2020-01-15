class Question < ApplicationRecord
    belongs_to :survey
    has_many :answers, dependent: :destroy
    validates :query, presence: true, uniqueness: true
end
