class CreateLeavePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :leave_plans do |t|
      t.references :employee, null: false, foreign_key: true
      t.integer :leave_type
      t.text :leave_reason
      t.date :leave_from
      t.date :leave_to

      t.timestamps
    end
  end
end
