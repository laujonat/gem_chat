# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def new
    super
  end

  def create, end

  def destroy
    sign_out_and_redirect(current_user)
  end
end
