require 'spec_helper'

describe Tweet do
  it 'should allow a user to post a tweeet' do
    user = FactoryGirl.create :user
    login(user)
    fill_in "TWEET", with: "First tweet"
    click_button "Create Tweet"
    expect(page).to have_content "First tweet"
  end
  it 'shold list a users tweets' do
    user = FactoryGirl.create :user
    login(user)
    expect(page).to have_content user.email
  end
end
