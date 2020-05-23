require "rails_helper"

describe DashboardController, type: :request do
  describe "GET#show" do
    subject(:get_show) { get dashboard_path }

    describe "For logged-in user" do
      let(:user) { create(:user) }

      before { sign_in(user) }

      it "should have 200 status" do
        get_show

        expect(response).to have_http_status(200)
      end
    end

    describe "For visitor" do
      it "should have 302 status" do
        get_show

        expect(response).to have_http_status(302)
      end
    end
  end
end