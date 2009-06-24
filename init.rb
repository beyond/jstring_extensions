# Include hook code here

require 'jstring_extensions'

class String #:nodoc:
  include ActiveSupport::CoreExtensions::String::JStringExtensions
end
