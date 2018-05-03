class Instructor < ApplicationRecord
    has_one :cohort
    validates_numericality_of :age, :in => 1..150
    validates :salary, numericality: { other_than: 0 }
end
