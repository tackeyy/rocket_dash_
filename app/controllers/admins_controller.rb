class AdminsController < ActionController::Base
  layout 'admin/layouts/application'

  protect_from_forgery with: :exception

  http_basic_authenticate_with name: ENV['BASIC_AUTH_USER_NAME'], password: ENV['BASIC_AUTH_PASSWORD'] if Rails.env.production?

  before_action :require_login

  def current_admin
    @current_admin ||= Admin.find_by(id: session[:admin_id])
  end

  private

  def require_login
    redirect_to admin_sign_in_url, notice: 'ログインしてください。' unless current_admin
  end
end
