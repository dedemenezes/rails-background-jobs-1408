class UpdateUserJob < ApplicationJob
  queue_as :default

  # (*args) => represents that your method can take 'n' arguments when called

  def perform(user, api_key)
    # debugger
    # Do something later
    # WE NEED THE API_KEY
    puts "Calling Clearbit API to enhance #{user.email}"
    sleep(2)
    puts "#{user.email} enhanced with Clearbit API"
  end
end
