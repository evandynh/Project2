class SkillsController < ApplicationController

  def new
  end

  def show
    @skill = Skill.find(session[:user_id])
  end

  def edit
  end
end
