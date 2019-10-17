class RegistrationsController < Devises::RegistrationsController
	private 

	def sign_up_params
		parans.require(:user).permit(:email,:password,:password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:email,:password,:password_confirmation)
	end
end 