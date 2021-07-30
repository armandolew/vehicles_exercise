class Api::Controller < ApplicationController
  rescue_from StandardError do |error|
    render json: { message: error.message.to_json }, status: :bad_request
  end
end
