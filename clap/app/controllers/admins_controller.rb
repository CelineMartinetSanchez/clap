class AdminsController < ApplicationController

  def index
  end

  def show
    @admin = current_admin
  end

  def edit
  	@admin = current_admin
  end

  def update
  	@admin = current_admin
  end

end