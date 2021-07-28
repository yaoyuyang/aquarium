# frozen_string_literal: true

# typed: strict

class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  layout 'mailer'
end