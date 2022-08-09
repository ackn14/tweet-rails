class User < ApplicationRecord
  validates :name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :email, presence: true,
                    format: { with: VALID_EMAIL_REGEX },
                    length: { maximum: 255 },
                    uniqueness: true
  validates :password, presence: true,
                       format: {
                         with: VALID_PASSWORD_REGEX,
                         message: "は半角英数を両方含む必要があります"
                       },
                       length: { minimum: 8 }
end
