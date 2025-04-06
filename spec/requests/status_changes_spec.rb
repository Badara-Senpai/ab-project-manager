require 'rails_helper'

RSpec.describe "StatusChanges", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/status_changes/create"
      expect(response).to have_http_status(:success)
    end
  end

end
