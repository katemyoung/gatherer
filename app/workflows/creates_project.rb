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
    # rubber ducking: needs to seperate multiple strings into individual tasks
    task_string.split("\n").map do |one_task|
      title, size_string = one_task.split(":") #parallel assignment
      Task.new(title: title, size: size_as_integer(size_string))
    end
  end

  def size_as_integer(size_string)
   size_string.to_i <= 0 || size_string == nil ? 1 : size_string.to_i
  end
end