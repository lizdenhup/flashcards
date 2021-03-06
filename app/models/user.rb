class User < ActiveRecord::Base
has_many :decks, dependent: :destroy 
has_many :cards, through: :decks 
has_many :subjects, through: :decks 

devise :database_authenticatable, :registerable, :omniauthable,
       :recoverable, :rememberable, :trackable, :validatable

  def self.from_omniauth(auth)  
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
    end
  end

  def self.academic_leaderboard
    @rankings = User.all.order('sign_in_count DESC').pluck('email')
  end 

end
