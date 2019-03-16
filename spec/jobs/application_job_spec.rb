require "rails_helper"

RSpec.describe ApplicationJob do
  it "does not retry on octokit authorization exception" do
    job = ApplicationJob.new
    allow(job).to receive(:perform).and_raise(Octokit::Unauthorized)
    allow(job).to receive(:retry_job)

    expect { job.perform_now }.to raise_error(Octokit::Unauthorized)

    expect(job).not_to have_received(:retry_job)
  end
end
