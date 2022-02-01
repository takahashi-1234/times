class CreateStudyDates < ActiveRecord::Migration[5.2]
  def change
    create_table :study_dates do |t|
      t.date:study_date

      t.timestamps
    end
  end
end
