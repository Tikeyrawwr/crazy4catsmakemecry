class Publication < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :reactions, dependent: :destroy
  # accepts_nested_attributes_for :comments

  Kinds = %w[like dislike].freeze
  KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta"}.freeze
end
