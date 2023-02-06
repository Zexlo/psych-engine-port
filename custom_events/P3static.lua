function onCreate()
    makeAnimatedLuaSprite('Xenstatic', 'Phase3Static', 0, 0);
    setObjectCamera('Xenstatic', 'other');
    addAnimationByPrefix('Xenstatic', 'idle', 'Phase3Static', 24, false); 
	setProperty('Xenstatic.alpha', 0);
	addLuaSprite('Xenstatic', true);
    scaleObject('Xenstatic',4,4)
end

function onEvent(name, value1, value2)
    if name == 'P3static' then
     
	runTimer('run', 1.6);
	setProperty('Xenstatic.alpha', 0.7);
    playAnim('Xenstatic', 'idle',false);
	playSound('staticBUZZ');
        end
    end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'run' then
setProperty('Xenstatic.alpha', 0);
end
end