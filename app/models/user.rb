class User < ApplicationRecord

  validates :username, uniqueness: { case_sensitive: false } 

  validates :username, format: { without: /\s/ }
  end
