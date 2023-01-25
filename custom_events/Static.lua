function onCreate()
    makeAnimatedLuaSprite('showstatic', 'screenstaticBG', 0, 0);
    setObjectCamera('showstatic', 'other');
    addAnimationByPrefix('showstatic', 'idle', 'STATIC', 24, true); 
	setProperty('showstatic.alpha', 0);
	addLuaSprite('showstatic', true);
end

function onEvent(name, value1, value2)
    if name == 'Static' then
    if value1 == '' then
    vis = 0.8
    else vis = tonumber(value1);    
    end

    if value2 == '' then
    startTime = 0.3;    
    else startTime = tonumber(value2);
    end      
	runTimer('run', startTime);
	setProperty('showstatic.alpha', vis);
    playAnim('showstatic', 'idle',false);
	playSound('staticBUZZ');
        end
    end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'run' then
setProperty('showstatic.alpha', 0);
end
end