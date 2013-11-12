# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_off do
    start_date "2013-11-12"
    end_date "2013-11-12"
    reason "MyString"
    user nil
  end
end
