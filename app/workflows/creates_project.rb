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
    # rubber ducking: needs to seperate out the title from the size
    task = task_string.split(":")
    task[1] == "0" || task[1]  == nil ? size = 1 : size = task[1]
    arr = []
    arr.push(Task.new(title: task[0], size: size))
  end
end