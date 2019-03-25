module ApplicationHelper

    @admin_credentials =
    {
      name: ENV['ADMIN_NAME'],
      password: ENV['ADMIN_PASSWORD']
    }

  def self.http_authenticate
    ApplicationController::http_basic_authenticate_with @admin_credentials
  end
end
