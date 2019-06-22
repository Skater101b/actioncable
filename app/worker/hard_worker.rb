class HardWorker
  include Sidekiq::Worker
  sidekiq_options :retry => false


  def perform(value)
    sleep 5
    @update = value
    ActionCable.server.broadcast "some_channel", @update
  end 
end