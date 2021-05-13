module Algoritmo
	module Sort
		class Bubble
			def initialize(list)
				@list = list
				@len = @list.length
			end

			def sort
				for i in 0..@len		
					(@len-1).times do |j|
						if @list[j] > @list[j+1] 
							@list[j], @list[j+1] = @list[j+1], @list[j]
						end
					end
				end
				@list
			end
		end
	end 
end
