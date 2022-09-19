class CreateDesignations < ActiveRecord::Migration[7.0]
  def change
    create_table :designations do |t|
      t.string :designation_name

      t.timestamps
    end
  end
end
