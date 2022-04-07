class Project
  attr_accessor :tasks

  def initialize
    @tasks = []
  end

  def done?
    tasks.all?(&:complete?)
  end

  def total_size
    tasks.sum(&:size)
  end
end