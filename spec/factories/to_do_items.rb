# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :to_do_item do
    description "MyString"
    complete false
    user ""
  end
end
