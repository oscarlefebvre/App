class CookiesController < ApplicationController
  before_action :set_cookie, only: [:show, :edit, :update, :destroy]

  def index
    @cookies = Cookie.all
  end

  def show
  end

  def new
    @cookie = Cookie.new
  end

  def create
    cookie = Cookie.new(cookie_params)
    cookie.save
    redirect_to cookies_path
  end

  def edit
  end

  def update
    @cookie.update(cookie_params)
    redirect_to cookies_path
  end

  def destroy
    @cookie.delete
    redirect_to cookies_path
  end

  private

  def set_cookie
    @cookie = Cookie.find(params[:id])
  end

  def cookie_params
    params.require(:cookie).permit(:name, :flavour, :note)
  end
end
