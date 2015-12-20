class OnlineResumesController < ApplicationController
  
  def show
    @resume = OnlineResume.find(params[:id])
  end

end
