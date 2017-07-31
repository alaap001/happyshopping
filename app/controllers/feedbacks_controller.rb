class FeedbacksController < ApplicationController
	def index
		@feedbacks = Feedback.all.limit(20);
	end
	def create
		@feedback = Feedback.create(feedback_params)
		if @feedback.save
				redirect_to :back
			else
			    flash[:notice] = "Error in form"
				redirect_to :back
		end
	end
	private

	def feedback_params
		params.require(:feedback).permit(:firstname,:fullname,:phone,:email,:what_you_think)
	end
end
