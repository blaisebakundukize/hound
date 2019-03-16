class CredoReviewJob < ApplicationJob
  queue_as :credo_review
end
