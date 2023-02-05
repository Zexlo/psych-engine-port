function onEvent(name, value1, value2)
	if name == 'Hide-Notes' or name == 'Show-Notes' then

	if middlescroll then
		alpha = 0.5
		else
		alpha = 1
		end		
	dur = tonumber(value2);

	if value2 == '' then
		dur = 1;	
	end

	if value1 == 'all' then
     for i = 4,7 do
     noteTweenAlpha(i,i,1,dur,'linear')
		end
		for i = 0,3 do
			noteTweenAlpha(i,i,alpha,dur,'linear')
			   end
elseif value1 == 'bf' then
		for i = 4,7 do
		noteTweenAlpha(i,i,1,dur,'linear')
		   end
		   for i = 0,3 do
			noteTweenAlpha(i,i,alpha,dur,'linear')
			   end

		elseif value1 == 'dad' then
			for i = 0,3 do
			noteTweenAlpha(i,i,1,dur,'linear')
			   end
			for i = 0,3 do
			noteTweenAlpha(i,i,alpha,dur,'linear')
			end		   
		end
	end	   	
end