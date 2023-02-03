function onEvent(name, value1, value2)
	if name == 'Hide-Notes' then
	dur = tonumber(value2);

	if value1 == 'all' then
     for i = 0,7 do
     noteTweenAlpha(i,i,0,dur,'linear')
		end
	end

elseif value1 == 'bf' then
		for i = 4,7 do
		noteTweenAlpha(i,i,0,dur,'linear')
		   end
		elseif value1 == 'dad' then
			for i = 0,3 do
			noteTweenAlpha(i,i,0,dur,'linear')
			   end
		   end	
end