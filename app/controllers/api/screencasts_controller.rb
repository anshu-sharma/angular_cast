class Api::ScreencastsController < ApplicationController
  # GET /screencasts
  # GET /screencasts.json
#   def index
#     render json: Screencast.all
#   end

#   def create
#    @data=Screencast.new(safe_params)
#    render json: @data
#    if @data.save
#      redirect_to root_url
#   end	

#   # GET /screencasts/:id
#   # GET /screencasts/:id.json
#   def show
#   	render json: Screencast.find(params[:id])
#   end
 
#   def update
#     @data=Screencast.find(params[:id])
#     if @data.update_attributes(safe_params)
#       flash[:success] = 'vdfgh.'
#        redirect_to root_url
#     else
     

#     end   


#   end
#   private

#    def safe_params
#     params.require(:test).permit(:id,:title)
#   end
# end



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
    if @data.update_attributes(safe_params)
      flash[:success] = 'vdfgh.'
       redirect_to root_url
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

