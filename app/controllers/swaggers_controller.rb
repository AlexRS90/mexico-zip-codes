class SwaggersController < ApplicationController
  def index
    redirect_to '/api-docs'
  end
end
