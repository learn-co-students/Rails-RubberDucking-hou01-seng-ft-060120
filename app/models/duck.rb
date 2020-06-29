class Duck < ApplicationRecord
    validates :name, presence: :true
    validates :student_id, presence: :true
    belongs_to :student
end
