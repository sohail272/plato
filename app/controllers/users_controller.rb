class UsersController < ApplicationController
  def dashboard
    @projects = current_user.projects
    @org_projects = current_user.org_projects
  end
end
