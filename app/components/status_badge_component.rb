# frozen_string_literal: true

class StatusBadgeComponent < ViewComponent::Base
  def initialize(status:)
    @status = status
  end

  private

  def status_color
    case @status
    when 'Not Started'
      'bg-gray-700 text-white'
    when 'In Progress'
      'bg-blue-600 text-white'
    when 'Blocked'
      'bg-red-600 text-white'
    when 'Completed'
      'bg-green-600 text-white'
    else
      'bg-gray-600 text-white'
    end
  end
end
