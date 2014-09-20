# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :rss_feed do
    name "MyString"
    url "MyString"
    user_id 1
  end
end
