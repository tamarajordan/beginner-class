class Course < ApplicationRecord
  enum genre: { entertainment: 0, music: 1, sports: 2, writing: 3, business: 4, arts: 5, other: 6 }
  enum status: { hidden: 0, pre_enroll: 1, active: 2, archived: 3 }

  has_many :lessons
  has_many :recommendations
  has_one :marketing_content
end
