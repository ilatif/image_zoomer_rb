# Configuration class to provide information to jQuery plugin to setup lens
module ImageZoomer

	class Configuration

		# == Parameters:
		# width::
		#		Specifies width for zoom lens
		# height::
		#   Specifies height for zoom lens
		# zoom_level::
		#   Specifies zoom level for zoom lens

		attr_accessor :width
		attr_accessor :height
		attr_accessor :zoom_level

		def initialize
			@width = 90
			@height = 90
			@zoom_level = 1.5
		end

		# Override default options with the provided ones in block
		def set_options(&block)
			block.yield(self)
		end

	end
end