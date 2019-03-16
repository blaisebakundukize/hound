class ReekReviewJob < ApplicationJob
  queue_as :reek_review
end
