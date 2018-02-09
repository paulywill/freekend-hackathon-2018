class PackjobsController < ApplicationController
  def new
  end

  def create
    render plain: params[:packjob].inspect
  end
end
