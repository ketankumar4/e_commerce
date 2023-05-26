class ApplicationController < ActionController::Base
  # def destroy
  #   # Turbo requires redirects be :see_other (303); so override Devise default (302)
  #   return redirect_to after_sign_out_path_for(resource_name), status: :see_other, notice: I18n.t('devise.sessions.signed_out')
  # end

  # def resource_name
  #   :seller
  # end
end
