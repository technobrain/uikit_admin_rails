# frozen_string_literal: true
module Admin
  class BaseController < ApplicationController
    # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    layout 'admin'
    # before_action :require_login

    def index
      render 'admin/index'
    end

    private

    # # Sorcery
    # def not_authenticated
    #   redirect_to sign_in_path, notice: 'Require login.'
    # end

    # # Pundit
    # def user_not_authorized
    #   flash[:alert] = 'You are not authorized to perform this action.'
    #   redirect_to(request.referer || root_path)
    # end
  end
end
