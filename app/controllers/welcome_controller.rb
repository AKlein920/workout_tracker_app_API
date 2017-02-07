class WelcomeController < ApplicationController
  def index
    render json: {status: 200, message: 'Workout App API'}
  end
end
