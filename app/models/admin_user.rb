require 'digest/sha1'
class AdminUser < ActiveRecord::Base
  attr_protected :hashed_password, :salt
  attr_accessor :password
  
  validates_length_of :password, :within => 8..25, :on => :create
  
  before_save :create_hashed_password
  after_save :clear_password
  
  def self.authenticate(user_name="", password="")
    user = AdminUser.find_by_user_name(user_name)
    if user && user.password_match?(password)
      return user
    else 
      return false
    end
  end
  
  def password_match?(password="")
    hashed_password == AdminUser.hash_with_salt(password, username)
  end
  
  def self.make_salt(username="")
    Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
  end
  
  def self.hash_with_salt(password="", salt="")
    Digest::SHA1.hexdigest("Put #{salt} on the #{password}")
  end 
  
  private
  
  def create_hashed_password
    # Whenever :password has a value hashing is needed
    unless password.blank?
      # always use "self" when assigning values
      self.salt = AdminUser.make_salt(username) if salt.blank?
      self.hashed_password = AdminUser.hash_with_salt(password, salt)
    end
  end
  
  def clear_password
    # for security and b/c hashing is not needed
    self.password = nil
  end
  
end
