# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :work_shift do
    start_of_shift "2013-11-12 11:03:21"
    end_of_shift "2013-11-12 11:03:21"
    user nil
  end
end
