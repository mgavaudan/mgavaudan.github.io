class User < ActiveRecord::Base

  attr_accessible :email, :password_digest, :username

  validates_presence_of :email, :password_digest, :username, :on => :create
  validates_uniqueness_of :email, :username
  validates_format_of :email, :with => /[-0-9a-zA-Z.+_]+@[-0-9a-zA-Z.+_]+\.[a-zA-Z]{2,4}/, :on => :create

  has_secure_password


end
