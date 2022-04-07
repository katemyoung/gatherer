class Task
  attr_accessor :size, :completed

  def initialize( arguments = {} )
    @completed = arguments[:completed]
    @size = arguments[:size]
  end

  def mark_completed
    @completed = true
  end

  def complete?
    @completed
  end
end