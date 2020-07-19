class ProjetPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    admin? # seul les admins peuvent creer un projet
  end

  def show?
    true # seuls les membres et les admins peuvent voir un projet au complet
  end

  def update?
    user_is_owner_or_admin? # Seul le owner ou un admin peux update ses projets
    # - record: the projet passed to the `authorize` method in controller
    # - user:   the `current_user` signed in with Devise.
  end

  def destroy?
    user_is_owner_or_admin? # Seul le owner ou un admin peux destroy ses projets
  end

  private

  def user_is_owner_or_admin?
    user&.admin || record.user == user
  end

  def admin?
    user&.admin
  end

  def member?
    user&.member
  end
end
