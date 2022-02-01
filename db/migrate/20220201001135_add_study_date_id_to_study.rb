class AddStudyDateIdToStudy < ActiveRecord::Migration[5.2]
  def change
    add_column :studies, :study_date_id, :integer
  end
end
