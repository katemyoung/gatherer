require "rails_helper"

describe Task do
  let(:task) { Task.new }

  it "a new task is not complete" do
    expect(task).not_to be_complete
  end

  it "allows us to complete a task" do
    task.mark_completed
    expect(task).to be_complete
  end
end