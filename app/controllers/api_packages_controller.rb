class ApiPackagesController < ApplicationController
  def create
    render json: request.body.read
  end

  def index
    render json: ['a', 'b', 'c']
  end

  def show
  end

  def update
  end

  def delete
  end
end
