class Student < ApplicationRecord
    # belongs_to :cohort
    has_one :user
    validates_numericality_of :age, :in => 1..150
end
