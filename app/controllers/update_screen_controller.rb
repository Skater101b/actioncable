class UpdateScreenController < ApplicationController
  def index
   
  end

  def update_screen
    puts "I am here"
    HardWorker.perform_async("Holy Cow it Worked!")
  end
end
