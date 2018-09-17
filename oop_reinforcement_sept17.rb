class Task
  def initialize(description, due_date)
    @description = description
    @due_date = due_date
  end

  attr_accessor :description, :due_date
end

class TodoList
  def initialize
    @tasks = []
  end

  def add_task(obj)
    @tasks << obj
  end

  attr_reader :tasks
end

run = Task.new("Moving feet quickly", "End of day")
walk = Task.new("Moving feet slowly", "End of week")
rest = Task.new("Not moving at all", "Morning")

puts run.due_date
puts walk.due_date
puts rest.due_date

to_do_list = TodoList.new

to_do_list.add_task(run)
to_do_list.add_task(walk)
to_do_list.add_task(rest)

to_do_list.tasks.each do |task|
  puts task.description
end
