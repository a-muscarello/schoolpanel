class Cohort < ApplicationRecord
    has_many :students
    has_one :instructor
    belongs_to :course
end
