class LeavePlan < ApplicationRecord
  belongs_to :employee
  enum leave_type: %i[floater_leave paid_leave unpaid_leave unplanned_leave planned_leave]

  # Validations
  validates :employee_id, :leave_reason, :leave_from, :leave_to, :leave_type,
             presence: true
  validates :leave_from,
            comparison: { greater_than_or_equal_to: Date.today, message: " can't be in past" }
  validates :leave_to,
            comparison: { greater_than_or_equal_to: Date.today, message: " can't be in past" }
end
