class StudyDate < ApplicationRecord
  has_many:studies,dependent: :destroy
end
