class EslintReviewJob < ApplicationJob
  queue_as :eslint_review
end
