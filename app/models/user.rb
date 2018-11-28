class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
          has_many :address_lines, dependent: :destroy
          has_many :favorites, dependent: :destroy
          has_many :cd_products, through: :favorites
          has_one :shopping_cart
          accepts_nested_attributes_for :address_lines
          # 親モデルとネストしたいときに必須
  def full_name
    self.first_name + self.last_name
  end
  def full_name_kana
    self.first_name_kana + self.last_name_kana
  end

  enum delete_flag: {
    ユーザー: false,
    退会ユーザー: true
  }
  scope :active, -> { find_by(delete_flag: false) }
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :first_name_kana, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/}
  validates :last_name_kana, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/}
  validates :telephone, presence: true, format: {with: /\A[0-9]{1,4}-[0-9]{1,4}-[0-9]{1,4}\z/}
end
