# frozen_string_literal: true

class User < ActiveRecord::Base
  extend Devise::Models
  has_many :entries, dependent: :destroy
  # TODO: Need to figure out if want to destroy or nullify this
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  include DeviseTokenAuth::Concerns::User
end
