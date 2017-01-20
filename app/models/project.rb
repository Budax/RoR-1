class Project < ApplicationRecord
  validates :title, :description, :author, presence: true

end
