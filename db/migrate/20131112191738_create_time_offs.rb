class CreateTimeOffs < ActiveRecord::Migration
  def change
    create_table :time_offs do |t|
      t.date :start_date
      t.date :end_date
      t.string :reason
      t.references :user, index: true

      t.timestamps
    end
  end
end
