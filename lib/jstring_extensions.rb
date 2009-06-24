# JstringExtensions
module ActiveSupport #:nodoc:
  module CoreExtensions #:nodoc:
    module String #:nodoc:
			# utility methods for multibyte string
      module JStringExtensions
				def jstrip
			    result = self.dup
					dup.jstrip!
				end

				def jstrip!
			    sub!(/\A[\s　]+/, "")
			    sub!(/[\s　]+\Z/, "")
					self
				end
			end
		end
	end
end
