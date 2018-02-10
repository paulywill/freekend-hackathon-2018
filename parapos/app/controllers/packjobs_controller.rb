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

  def edit
    @packjob = Packjob.find(params[:id])
  end

  def create
    @packjob = Packjob.new(packjob_params)

    if @packjob.save
      redirect_to @packjob
    else
      render 'new'
    end
  end


  def update
    @packjob = Packjob.find(params[:id])

    if @packjob.update(packjob_params)
      redirect_to @packjob
    else
      render 'edit'
    end
  end

  private
    def packjob_params
      params.require(:packjob).permit(:packer, :rig)
    end

end
