class ProjectsController < ApplicationController
    before_action :logged_in_user, :experience, only: [:new]

    def new
        experience.projects.create
        flash[:success] = "Project added."
        redirect_to edit_url
    end

    private
    def experience
        @experience ||= current_user.profile.experiences.find(params[:exp])
    end
end
