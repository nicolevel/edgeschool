class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :whoweare, :whatweoffer,
    :contact, :adventure, :leadership, :capacity, :civil, :social]

  def home
  end

  def whoweare
  end

  def whatweoffer
  end

  def contact
  end

  def adventure
  end

  def capacity
  end

  def civil
  end

  def leadership
  end

  def social
  end
end
