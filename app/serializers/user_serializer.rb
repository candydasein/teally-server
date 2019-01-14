# frozen_string_literal: true

class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :tastings, :flavor_likes
  
  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
