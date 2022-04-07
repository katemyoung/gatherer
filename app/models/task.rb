class Task
  attr_accessor :size, :completed_at

  def initialize( arguments = {} )
    mark_completed(arguments[:completed_at]) if arguments[:completed_at]
    @size = arguments[:size]
  end

  def mark_completed(date = Time.current)
    @completed_at = date
  end

  def complete?
    @completed_at.present?
  end

  def part_of_velocity?
    return false unless complete?
    completed_at > 21.days.ago
  end

  def points_towards_velocity
    part_of_velocity? ? size : 0
  end
end