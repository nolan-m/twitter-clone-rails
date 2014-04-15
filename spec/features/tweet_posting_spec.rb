require 'spec_helper'

describe 'create tweet' do
  context 'a user creates a new tweet from their show page' do
    user = FactoryGirl.create :user
    login(user)
    current_user.should eq user
  end
end
