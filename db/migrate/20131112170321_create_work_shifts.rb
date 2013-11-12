class CreateWorkShifts < ActiveRecord::Migration
  def change
    create_table :work_shifts do |t|
      t.datetime :start_of_shift
      t.datetime :end_of_shift
      t.references :user, index: true

      t.timestamps
    end
  end
end
