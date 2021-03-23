class Signup < ApplicationRecord

    belongs_to :activity
    belongs_to :camper

    validates :activity_id, :camper_id, presence: true
    validates :time, numericality: { only_integer: true}
    validates :time, numericality: { greater_than_or_equal_to: 0}
    validates :time, numericality: { less_than_or_equal_to: 23}
end
