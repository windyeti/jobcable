class HardJob < ApplicationJob
  queue_as :default

  def perform(process_name)
    sleep 6
    ActionCable.server.broadcast 'finish_process', {process_name: process_name}
  end
end
