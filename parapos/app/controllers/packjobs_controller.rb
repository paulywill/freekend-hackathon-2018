class PackjobsController < ApplicationController
  def index
    @packjobs = Packjob.all
  end

  def show
    @packjob = Packjob.find(params[:id])
  end

  def new
    @packjob = Packjob.new
  end

  def create
    @packjob = Packjob.new(packjob_parms)

    if @packjob.save
      redirect_to @packjob
    else
      render 'new'
    end    
  end

  private
    def packjob_parms
      params.require(:packjob).permit(:packer, :rig)
    end

end
