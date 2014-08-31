module ImageZoomer
	class Configuration
		attr_accessor :width
		attr_accessor :height
		attr_accessor :zoom_level

		def initialize
			@width = 90
			@height = 90
			@zoom_level = 1.5
		end

		def set_options(&block)
			block.yield(self)
		end

	end
end