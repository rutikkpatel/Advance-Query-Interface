class Employee < ApplicationRecord
  belongs_to :designation
  enum gender: %i[female male]
  enum availability: [:part_time, :full_time]
  has_many :leave_plans

  # Scope Example
  scope :query1, -> { where("age > 20 and age < 40") }
  scope :query2, -> { where(gender: "female") }
  scope :query3, -> { where( designation: { designation_name: "Software Engineer" }, gender: "male") }
  scope :query4, -> { where(availability: "part_time") }
  scope :query5, -> { where("age > ? AND salary > ?", 40, 50000) }
  scope :query6, -> { where(age: [46, 51, 55]) }
  scope :query7, -> { where('id < 6').order('birth_date desc') }
  scope :query8, -> { group(:age).having("count(age) > 1") }
  scope :query11, -> { order("salary DESC").limit(5) }
  scope :query12, -> { order("salary DESC").limit(2).last }
end


