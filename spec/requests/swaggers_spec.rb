require 'rails_helper'

RSpec.describe "Swaggers", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/swaggers/index"
      expect(response).to have_http_status(:success)
    end
  end

end
