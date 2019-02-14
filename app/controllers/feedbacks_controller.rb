class FeedbacksController < ApplicationController
   protect_from_forgery except: :create

   def create
    @feedback = Feedback.new(feedback_params)
    @feedback.save
   end


  private
    def feedback_params
      params.permit(:body)
    end
end
