class VisitorController < ApplicationController
  def index
  end

  def hard_method
    process_name = 'HARD METHOD'
    HardJob.perform_later(process_name)
  end
end
