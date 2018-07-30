class User < ApplicationRecord

  validates :username, uniqueness: { case_sensitive: false }

  validates :username, absence: false
  end
