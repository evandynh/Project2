class SkillsController < ApplicationController
  before_action :set_skill, only: [:show, :edit]
  def new
    @skill = Skill.new
  end

  def show
  end

  def edit
  end

  private
  def set_skill
    @skill = Skill.find(session[:user_id])
  end

end
