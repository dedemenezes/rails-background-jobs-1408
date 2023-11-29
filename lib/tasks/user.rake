namespace :user do
  desc "Enhance all your user with Clearbit API"
  task update_all: :environment do
    # do you thing
    # get all the user
    users = User.all
    # update each one of the using my UpdateUserJob
    puts "Updating users with API"
    users.each do |user|
      UpdateUserJob.perform_later(user, ENV['CLEARBIT_API_KEY'])
    end
    puts 'Users enhanced!'
  end
end
