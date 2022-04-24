class CreatesProject 
  attr_accessor :name, :project, :task_string

  def initialize(name: "", task_string: "")
    @name = name
    @task_string = task_string
  end

  def build
    self.project = Project.new(name: name)
  end

  def convert_string_to_tasks
    # rubber ducking: needs to return an array of tasks objects
    arr = []
    arr.push(Task.new(title: task_string, size: 1))
  end
end