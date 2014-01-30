module Spree
  module Admin
    class JirafeSettingsController < Admin::BaseController
      def update
        Spree::Jirafe::Config[:site_id] = params[:site_id]
        Spree::Jirafe::Config[:access_token] = params[:access_token]
        flash[:success] = I18n.t(:successfully_updated, :resource => I18n.t(:jirafe_settings))

        render :edit
      end
    end
  end
end
