require "rails_helper"

RSpec.describe PlaylistVideosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/playlist_videos").to route_to("playlist_videos#index")
    end


    it "routes to #show" do
      expect(:get => "/playlist_videos/1").to route_to("playlist_videos#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/playlist_videos").to route_to("playlist_videos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/playlist_videos/1").to route_to("playlist_videos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/playlist_videos/1").to route_to("playlist_videos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/playlist_videos/1").to route_to("playlist_videos#destroy", :id => "1")
    end

  end
end
