class LeadsController < ApplicationController
  def new
  end

  def create
  	if Lead.create(email: params[:lead][:email]).valid?
  		flash[:success] = "Thank you for your interest in Imp.Guru! We will send you periodic updates via email as things develop!"
	else
  		flash[:error] = "Slow down buddy, we know your excited but that doesn't look like a valid email address..."
  	end
  	redirect_to request.referer
  end
end
