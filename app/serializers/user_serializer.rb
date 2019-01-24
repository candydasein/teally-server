# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :tastings
  has_many :flavors
  
  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
