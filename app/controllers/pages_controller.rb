class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :convictions]

  def home
  end

  def convictions
  end
end
