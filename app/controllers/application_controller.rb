class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:prehome]
  include Pundit

  # Pundit: white-list approach.

  # WARNING commente les 2 lignes en dessous ca desactive toutes les policies !!!!!!!!!!!!!!
  after_action :verify_authorized, except: :index, unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "Seules les personnes connectées peuvent accéder aux projets"
    redirect_to(projets_path)
  end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
