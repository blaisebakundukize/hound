class SmallBuildJob < ApplicationJob
  include Buildable

  queue_as :medium
end
