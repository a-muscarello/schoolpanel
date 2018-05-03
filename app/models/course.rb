class Course < ApplicationRecord
    has_many :cohorts
    validates :total_in_class_hours, numericality: { other_than: 0 }
end
