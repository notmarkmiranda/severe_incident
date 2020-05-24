require "rails_helper"

describe "User is redirected to dashboard after login", type: :feature do
  let(:user) { create(:user) }

  it "redirects to dashboard and has a user's email" do
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"

    expect(current_path).to eq(dashboard_path)
    expect(page).to have_content(user.email)
  end
end
