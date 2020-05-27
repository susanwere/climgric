class PagesController < ApplicationController
  include CurrentCart
  before_action :set_cart
  def home
  end

  def about
  end

  def berries
    @berries = Berry.all
  end

  def team
  end

  def contact
  end
end
