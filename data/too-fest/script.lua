function onCreate()
finish = 15;
runTimer('lmao', finish);
end

function onUpdate(elasped)
--setProperty('songLength', 10000)	
	end
	
function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'lmao' then
setProperty('songLength', 4140000)
 runTimer('noo', finish + 75);
end

if tag == 'noo' then
setProperty('songLength', 41000)
end	
	
end	