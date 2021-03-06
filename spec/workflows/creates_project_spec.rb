require "rails_helper"

RSpec.describe CreatesProject do
  describe "initialization" do
    it "created a project given a name" do
      creator = CreatesProject.new(name: "Project Runway")
      creator.build
      expect(creator.project.name).to eq("Project Runway")
    end
  end

  describe "task string parsing" do
    it "handles and empty string" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "")
      tasks = creator.convert_string_to_tasks
      expect(tasks).to be_empty
    end

    it "handles a single string" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things")
      tasks = creator.convert_string_to_tasks
      expect(tasks.size).to eq(1)
      expect(tasks.first).to have_attributes(title: "Start things", size: 1)
    end

    it "handles a string with size" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things:3")
      tasks = creator.convert_string_to_tasks
      expect(tasks.size).to eq(1)
      expect(tasks.first).to have_attributes(title: "Start things", size: 3)
    end

    it "handles a single string with size zero" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things:0")
      tasks = creator.convert_string_to_tasks
      expect(tasks.size).to eq(1)
      expect(tasks.first).to have_attributes(title: "Start things", size: 1)
    end

    it "handles a string with a malformed size" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things:")
      tasks = creator.convert_string_to_tasks
      expect(tasks.size).to eq(1)
      expect(tasks.first).to have_attributes(title: "Start things", size: 1)  
    end

    it "handles a string with negative size" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things:-1")
      tasks = creator.convert_string_to_tasks
      expect(tasks.size).to eq(1)
      expect(tasks.first).to have_attributes(title: "Start things", size: 1)  
    end

    it "handles multiple tasks" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things:3\nEnd things:2")
      tasks = creator.convert_string_to_tasks
      expect(tasks.size).to eq(2)
      expect(tasks).to match(
        [an_object_having_attributes(title: "Start things", size: 3),
         an_object_having_attributes(title: "End things", size: 2)])
    end

    it "attaches tasks to the project" do
      creator = CreatesProject.new(name: "Project Runway", task_string: "Start things:3\nEnd things:2")
      tasks = creator.convert_string_to_tasks
      creator.create
      expect(creator.project.tasks.size).to eq(2)
      expect(creator.project).not_to be_a_new_record 
    end
  end
end