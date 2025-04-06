class Project < ApplicationRecord

  validates :name, presence: true, uniqueness: true
  validates :status, presence: true

  enum status: {
    not_started: 'Not Started',
    in_progress: 'In Progress',
    blocked: 'Blocked',
    completed: 'Completed'
  }
end
