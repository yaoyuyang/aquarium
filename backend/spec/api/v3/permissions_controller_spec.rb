require 'rails_helper'

RSpec.describe Api::V3::PermissionsController, type: :request do
  describe 'api' do

    # SIGN IN USERS
    before :each do
      @token_1 = []
      @token_2 = []
      @token_3 = []

      post "/api/v3/token/create?login=user_1&password=password"
      resp = JSON.parse(response.body)
      @token_1 << resp["token"]

      post "/api/v3/token/create?login=user_2&password=password"
      resp = JSON.parse(response.body)
      @token_2 << resp["token"]

      post "/api/v3/token/create?login=user_3&password=password"
      resp = JSON.parse(response.body)
      @token_3 << resp["token"]
    end

    # INVALID GET ROLES
    it "invalid_get_permissions" do
      # BAD TOKEN
      get "/api/v3/permissions"
      expect(response).to have_http_status 401
    end

    # FORBIDDEN GET ROLES
    it "forbidden_get_permissions" do
      # RETIRED
      get "/api/v3/permissions?token=#{@token_3[0]}"
      expect(response).to have_http_status 403
    end

    # GET ROLES
    it "get_permissions" do
      get "/api/v3/permissions?token=#{@token_1[0]}"
      expect(response).to have_http_status 200

      get "/api/v3/permissions?token=#{@token_2[0]}"
      expect(response).to have_http_status 200
    end

  end
end
