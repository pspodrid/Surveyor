class Answer < ApplicationRecord
    belongs_to :question, dependent: :destroy

    validates :title, presence: true
    validates_length_of :title, maximum: 100
end
