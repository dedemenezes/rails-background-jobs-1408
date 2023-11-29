class FakeJob < ApplicationJob
  queue_as :default


  def perform
    # debugger
    # Do something later that take some time to run
    puts 'Starting some time consuming process'

    sleep 10

    puts 'We are done! The process has been executed!'
  end
end
