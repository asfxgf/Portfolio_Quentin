class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :convictions, :competences, :ressources, :projets, :bibliotheque, :articles, :videos]
  skip_after_action :verify_authorized
  def home
  end

  def convictions
  end

  def competences
  end

  def ressources
  end

  def projets
  end

  def bibliotheque
  end

  def articles
  end

  def videos
  end
end
