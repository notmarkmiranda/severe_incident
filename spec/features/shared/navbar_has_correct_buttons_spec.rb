require "rails_helper"

describe "NavBar has correct buttons based on user state", type: :feature do
  it "shows a Log out button for a logged-in user" do
    feature_spec_login
    
    visit root_path

    expect(page).to have_link("Log out")
    expect(page).not_to have_link("Sign up")
    expect(page).not_to have_link("Log in")
  end

  it "shows Sign up and Log in buttons for a non-logged-in user" do
    visit root_path

    expect(page).to have_link("Sign up")
    expect(page).to have_link("Log in")
    expect(page).not_to have_link("Log out")
  end
end