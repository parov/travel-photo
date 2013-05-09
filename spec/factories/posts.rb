# spec/factories/posts.rb

require 'faker'

FactoryGirl.define do
  factory :post do |f|
    f.message {"hi folks"}
  end
end