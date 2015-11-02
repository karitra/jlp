module MC

export buffon

function buffon(N::Int64 = 1_000) 
	hits = 0
	for n in 1:N
		x, theta = rand(), pi/2 * rand()
		if x <= 0.5 * sin(theta) hits+=1 end
       	end 
	hits / N
end

function par_buffon(N) 
	hits = 0
	@parallel for n in 1:N
		x, theta = rand(), pi/2 * rand()
		if x <= 0.5 * sin(theta) hits+=1 end
       	end 
	N / hits
end


end

