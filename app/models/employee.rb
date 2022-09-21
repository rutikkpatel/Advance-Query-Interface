class Employee < ApplicationRecord
  belongs_to :designation
  enum gender: %i[female male]
  enum availability: [:part_time, :full_time]
end
