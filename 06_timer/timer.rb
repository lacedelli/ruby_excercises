class Timer
	def initialize
		@time= 0
	end
	
	def seconds
		@time
	end

	def seconds= time
		@time= time
	end

	def time_string 	
		@seconds = @time % 60
		@minutes = @time / 60
		@hours = @minutes / 60	
		if(@minutes >= 60)
			@minutes %= 60
		end
		if(@hours >= 60)
			@hours %= 60
		end
		@formatted_time = ""
		@formatted_time << padded(@hours) << padded(@minutes, ":") << padded(@seconds, ":")
	end

	def padded time, sep ="" 
		@formatted = ""
		if(time > 10)
			@formatted = sep << time.to_s
		else
			@formatted = sep << "0" << time.to_s
		end
		@formatted
	end
end
