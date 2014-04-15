FactoryGirl.define do
  factory :user do
    email 'test@user.com'
    handle 'test'
    password 'password'
    password_confirmation 'password'
  end
end
