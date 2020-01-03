class ApplicationController < ActionController::Base
  before_action :set_locale

  private

  def set_locale
    I18n.locale = params[:local] || I18n.default_locale
  end

  def default_url_options
    {locale: I18n.locale}
  end
end
