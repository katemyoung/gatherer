require "rails_helper"

describe Task do  
  describe "completion" do
    let(:task) { Task.new }

    it "a new task is not complete" do
      expect(task).not_to be_complete
    end

    it "allows us to complete a task" do
      task.mark_completed
      expect(task).to be_complete
    end
  end

  describe "velocity" do
    let(:task) { Task.new(size: 3) }

    it "does not count an incomplete task towards velocity" do
      expect(task).not_to be_a_part_of_velocity
      expect(task.points_towards_velocity).to eq(0)
    end

    it "counts a recently" do

    end
  end
end