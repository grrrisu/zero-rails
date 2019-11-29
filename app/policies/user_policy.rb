class UserPolicy < ApplicationPolicy
  attr_reader :user, :record

  def initialize(user, record)
    @user = user
    @record = record
  end

  def index?
    @user.present?
  end

  def manage?
    @user == @record
  end

  def show?
    @user.present?
  end

  def new?
    @user.present?
  end

  def create?
    @user.present?
  end

  def edit?
    manage?
  end

  def update?
    manage?
  end

  def destroy?
    @user != @record
  end
end
