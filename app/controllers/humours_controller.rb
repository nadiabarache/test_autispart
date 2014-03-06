class HumoursController < ApplicationController
def create
		# raise params.inspect
		@user = User.find(params[:user_id])
		@humour = @user.humours.create(params[:humour].permit(:day_humour,:event))
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:user_id])
		@humour = @user.humours.find(params[:id])
		@humour.destroy
		redirect_to user_path(@user)
	end

end
