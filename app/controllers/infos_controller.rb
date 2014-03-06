class InfosController < ApplicationController
	def create
		# raise params.inspect
		@user = User.find(params[:user_id])
		@info = @user.infos.create(params[:info].permit(:agediag,:paysdiag, :autistype, :psytrouble, :autretrouble))
		redirect_to user_path(@user)
	end

	def destroy
		@user = User.find(params[:user_id])
		@info = @user.infos.find(params[:id])
		@info.destroy
		redirect_to user_path(@user)
	end
end
