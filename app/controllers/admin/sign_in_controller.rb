class Admin::SignInController < AdminsController
  layout 'admin/layouts/sign_in'

  skip_before_action :require_login

  def show
    @admin = Admin.new
  end

  def create
    email, password = params[:admin].values_at(:email, :password)
    @admin = Admin.find_by(email: email) || Admin.new(email: email)

    if @admin.password_digest? && @admin.authenticate(password)
      session[:admin_id] = @admin.id
      redirect_to admin_url, notice: 'ログインしました。'
    else
      flash.now[:warning] = 'ログインに失敗しました。'
      render :show
    end
  end
end
