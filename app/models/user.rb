class User < ApplicationRecord
    include ActionText::Attachable
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  acts_as_voter
  has_many :articles, dependent: :destroy
  has_many :discussions, through: :articles
  has_one_attached :avatar
  def to_trix_content_attachment_patial_path
    to_partial_path
  end
end
