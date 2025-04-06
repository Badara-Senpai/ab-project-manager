class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project

  validates :content, presence: true

  def type
    'comment'
  end
end
