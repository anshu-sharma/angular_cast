class ScreencastsController < ApplicationController
  # GET /screencasts
  # GET /screencasts.json
  def index
  	@data1= Screencast.all
    render json:@data1
  end

  def create
   @data=Screencast.new(safe_params)
   if @data.save
      render json: @data 
   else

   end     
  end	
  def update
    @data=Screencast.find(params[:id])
    debugger
    if @data.update_attributes(safe_params)
      flash[:success] = 'vdfgh.'
    else
     

    end   
  end
  # GET /screencasts/:id
  # GET /screencasts/:id.json
  def show
    render json: Screencast.find(params[:id])
  end

  private

   def safe_params
    params.require(:screencast).permit(:id,:title)
  end
end
