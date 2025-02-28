FactoryBot.define do
  factory :comment do
    author { "mike" }
    sequence(:body) { |n| "Comment body #{n}" }
  end
end