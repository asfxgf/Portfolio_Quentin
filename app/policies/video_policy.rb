class VideoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    admin? # seul les admins peuvent creer une video
  end

  def show?
    false # Aucun user ne peux voir la show des videos
  end

  def update?
    user_is_owner_or_admin? # Seul le owner ou un admin peux update ses videos
    # - record: the video passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    user_is_owner_or_admin? # Seul le owner ou un admin peux destroy ses videos
  end

  private

  def user_is_owner_or_admin?
    user&.admin || record.user == user
  end

  def admin?
    user&.admin
  end
end
