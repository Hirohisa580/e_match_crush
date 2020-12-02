class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :plofile
  has_many :messages
  has_many :user_dms #中間テーブル
  has_many :dms, through: :user_dms
end
