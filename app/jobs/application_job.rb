class ApplicationJob < ActiveJob::Base
  rescue_from(Octokit::Unauthorized) do |exception|
    raise exception
  end
end
