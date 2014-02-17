FactoryGirl.define do
  factory :user do
    name     "Bruno"
    email    "bruno@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end