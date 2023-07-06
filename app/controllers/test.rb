class Mobil
    def initialize()
        @top_speed = 120
    end

    def top_speed
        @top_speed
    end
end

module Updater
    def top_speed
        super.tap do
            puts "sungguh kencang #{@top_speed}"
        end
    end
end

Mobil.prepend Updater