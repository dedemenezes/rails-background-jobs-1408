class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # CALLBACKS
  after_commit :enhance_user_with_clearbit_api, on: %i[create update]

  private


  def enhance_user_with_clearbit_api
    UpdateUserJob.perform_later(self)
  end

end
