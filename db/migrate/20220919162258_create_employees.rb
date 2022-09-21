class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :contact_number
      t.integer :age
      t.integer :gender
      t.references :designation, null: false, foreign_key: true
      t.date :joining_date
      t.date :birth_date
      t.float :salary
      t.integer :availability

      t.timestamps
    end
  end
end
