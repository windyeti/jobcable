class VisitorController < ApplicationController
  def index
  end

  def hard_method
    ActionCable.server.broadcast 'finish_process', {process_name: "FIRST"}

    process_name = 'HARD METHOD'
    HardJob.perform_later(process_name)
  end
end
