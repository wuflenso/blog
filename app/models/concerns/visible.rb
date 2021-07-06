# KARIM'S NOTES
# Concern is a file that contains extra functionality for clasess.
# Therefore, it can be utilized/included in many classes.
# Dont use Concern as a logic dump of a class. Use it for specific functionality
# that can be shared between different classes.

module Visible 
    extend ActiveSupport::Concern

    VALID_STATUSES = ['public','private','archived']

    included do
        validates :status, inclusion: {in: VALID_STATUSES}
    end

    class_methods do
        def public_count
          where(status: 'public').count
        end
    end

    def archived?
        status == 'archived'
    end
end