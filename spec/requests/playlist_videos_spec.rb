require 'rails_helper'

RSpec.describe "PlaylistVideos", type: :request do
  describe "GET /playlist_videos" do
    it "works! (now write some real specs)" do
      get playlist_videos_path
      expect(response).to have_http_status(200)
    end
  end
end
