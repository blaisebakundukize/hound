require "rails_helper"

describe LargeBuildJob do
  it "queue_as low" do
    expect(LargeBuildJob.new.queue_name).to eq("low")
  end

  it 'is buildable' do
    expect(LargeBuildJob.new).to be_a(Buildable)
  end
end
