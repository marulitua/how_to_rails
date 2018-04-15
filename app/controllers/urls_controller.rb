require './lib/basex.rb'

class UrlsController < ApplicationController
  before_action :set_url, only: [:show, :update, :destroy]

  def index
    @urls = Url.all
    render json: @urls, include: 'name'
    #json_response(@urls)
  end

  def create
    @url = Url.create!(url_params)
    json_response(@url, :created)
  end

  def show
    json_response(@url)
  end

  def update
    @url.update(url_params)
    head :no_content
  end

  def destroy
    @url.destroy
    head :no_content
  end

  private

  def url_params
    # whitelist params
    params.permit(:origin)
  end

  def set_url
    decoded_id = Basex.decode(params[:id])
    @url = Url.find(decoded_id)
  end
end
