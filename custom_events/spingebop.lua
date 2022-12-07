function onCreate()
makeLuaSprite('spunchbop', 'sunky/SpingeBinge',120, 600);
	addLuaSprite('spunchbop', true);
setProperty('spunchbop.alpha', 0);
end

function onEvent(name, value1, value2)

    if name == 'spingebop' then
	startTime = 0.8;
	runTimer('bye', startTime);
      setProperty('dad.alpha', 0);
      setProperty('spunchbop.alpha', 1);
    end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'bye' then
setProperty('spunchbop.alpha', 0);	
setProperty('dad.alpha', 1);
end
end