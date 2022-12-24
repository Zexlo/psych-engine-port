function onCreate()
    makeAnimatedLuaSprite('showstatic', 'screenstaticBG', 0, 0);
    addAnimationByPrefix('showstatic', 'idle', 'STATIC', 60, false);
    setObjectCamera('showstatic', 'hud'); -- shows up in the camera center as he should
	setProperty('showstatic.alpha', 0);
	addLuaSprite('showstatic', true); -- false = add behind characters, true = add over characters
end

function onEvent(name, value1, value2)
    if name == 'Static' then
	
startTime = 0.3;

	runTimer('run', startTime);
	setProperty('showstatic.alpha', 0.6);
    objectPlayAnimation('showstatic', 'idle');
	playSound('staticBUZZ');
    end
	
end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'run' then
setProperty('showstatic.alpha', 0);
end

end