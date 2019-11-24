class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable

    def self.find_for_google_oauth2(auth)
      user = User.where(email: auth.info.email).first

    unless user
      user = User.create(name:     auth.info.name,
                         provider: auth.provider,
                         uid:      auth.uid,
                         email:    auth.info.email,
                         token:    auth.credentials.token,
                         password: Devise.friendly_token[0, 20])
    end
      user
    end

    has_many :likes
    has_many :articles, through: :likes

    after_create :send_welcome_mail
    def send_welcome_mail
    UserMailer.user_welcome_mail(self).deliver
    end
    
end