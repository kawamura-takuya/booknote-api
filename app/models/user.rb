class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name,
            presence: true,
            length: { maximum: 30 },
            format: { without: /\A\s+\z/, message: "は空白のみでは登録できません" }
end
