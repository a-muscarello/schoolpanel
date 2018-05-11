class Student < ApplicationRecord
    belongs_to :cohort
    # validates_numericality_of :age, :in => 1..150

    # validates :age, numericality: { greater_than: 1, less_than_or_equal_to: 150 } 

    validates :age, inclusion: { in: 1..150 } 
    # :message => "Age must be less than or equal to 150"

    # validates_numericality_of :age, greater_than_or_equal_to: 1, less_than_or_equal_to: 150
    # message: "You are too old!"
end
