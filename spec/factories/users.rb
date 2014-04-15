FactoryGirl.define do
  factory :user do
    email 'test@user.com'
    password 'password'
    password_confirmation 'password'
  end
end
