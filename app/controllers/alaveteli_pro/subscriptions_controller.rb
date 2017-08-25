# -*- encoding : utf-8 -*-
# Does not inherit from AlaveteliPro::BaseController as is pre-pro-login
class AlaveteliPro::SubscriptionsController < ApplicationController
  before_filter :authenticate

  def create
    redirect_to alaveteli_pro_dashboard_path
  end

  private

  def authenticate
    post_redirect_params = {
      :web => _('To upgrade your account'),
      :email => _('To upgrade your account'),
      :email_subject => _('To upgrade your account') }

    authenticated?(post_redirect_params)
  end
end
