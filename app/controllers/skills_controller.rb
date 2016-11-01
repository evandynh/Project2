class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit, :update]
  def new
    @skill = Skill.new
  end

  def show
  end

  def edit

  end

  def update
    if @skill.update_attributes(skill_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private
  def skill_params
    params.require(:skill).permit(:price, :description)
  end
  def set_skill
    @skill = Skill.find(session[:user_id])
  end

end
