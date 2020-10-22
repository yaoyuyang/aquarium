# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Factory' }
    login { 'factory' }
    password { 'password' }
  end
end
