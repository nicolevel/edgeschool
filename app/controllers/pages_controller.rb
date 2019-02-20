class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :whoweare, :whatweoffer, :contact]

  def home
  end

  def whoweare
  end

  def whatweoffer
  end

  def contact
  end
end
