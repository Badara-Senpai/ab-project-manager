class Project < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :status_changes, dependent: :destroy

  validates :name, presence: true, uniqueness: true
  validates :status, presence: true

  enum status: {
    not_started: 'Not Started',
    in_progress: 'In Progress',
    blocked: 'Blocked',
    completed: 'Completed'
  }

  def timeline_items
    (comments + status_changes).sort_by(&:created_at).reverse
  end
end
