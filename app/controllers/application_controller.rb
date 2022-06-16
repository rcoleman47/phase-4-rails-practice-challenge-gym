class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_record_invalid




  private

  def render_record_not_found(err_obj)
    render json: {error: err_obj}, status: :not_found
  end

  def render_record_invalid(err_obj)
    render json: {error: err_obj.record.errors.full_messages}, status: 422
  end

end
