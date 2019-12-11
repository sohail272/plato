module ApplicationHelper

  def get_task_status(task)
    task.completed ? "<span>&#10003</span>" : "<span>&#10007</span>"
  end 
end
