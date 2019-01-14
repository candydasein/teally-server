require "rails_helper"

RSpec.describe FlavorLikesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/flavor_likes").to route_to("flavor_likes#index")
    end


    it "routes to #show" do
      expect(:get => "/flavor_likes/1").to route_to("flavor_likes#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/flavor_likes").to route_to("flavor_likes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/flavor_likes/1").to route_to("flavor_likes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/flavor_likes/1").to route_to("flavor_likes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/flavor_likes/1").to route_to("flavor_likes#destroy", :id => "1")
    end

  end
end
