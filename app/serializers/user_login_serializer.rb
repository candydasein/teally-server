# frozen_string_literal: true

class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :tastings, :favorite_flavors
  has_many :flavors

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
