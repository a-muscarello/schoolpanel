class Cohort < ApplicationRecord
    has_many :students #, optional:true
    has_one :instructor #, optional:true
    #belongs_to :course, optional:true
end
