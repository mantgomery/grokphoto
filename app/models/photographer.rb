class Photographer < ActiveRecord::Base

  # ****
  # Devise modules
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable, :lockable, :token_authenticatable

  # ****
  # Validation
  validates :email, :presence => true, :uniqueness => { :case_sensitive => false }, :length => { :within => 5..100 }
  validates :name, :presence => true, :length => { :within => 3..100 }
  validates :phone, :length => { :within => 7..20, :allow_blank => true }
  validates :blog_url, :length => { :within => 10..255, :allow_blank => true }
  validates :facebook_url, :length => { :within => 10..255, :allow_blank => true }
  validates :twitter_url, :length => { :within => 10..255, :allow_blank => true }

  # ****
  # Mass-assignment protection
  attr_accessible :email, :password, :password_confirmation, :name, :phone, :blog_url, :facebook_url, :twitter_url, :google_analytics_key, :remember_me

  # ****
  # Attachments
  mount_uploader :logo, LogoUploader
end