FactoryGirl.define do
  factory :user do
    name     "Test User"
    email    "test123@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end