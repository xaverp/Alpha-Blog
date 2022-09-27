# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!
ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    html_tag.html_safe
  end

#   To remove the field_with_errors functionality, add the above code