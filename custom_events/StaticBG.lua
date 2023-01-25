function onCreate()
    makeAnimatedLuaSprite('StaticBG', 'screenstaticBG', -350, 060);
    addAnimationByPrefix('StaticBG', 'move', 'STATIC', 20, false);
    setScrollFactor('StaticBG', 0.9, 0.9);
    scaleObject('StaticBG', 1.8, 1.8);
    setProperty('StaticBG.alpha', 0);	
     addLuaSprite('StaticBG', false); -- false = add behind characters, true = add over characters
  end
    
  function onEvent(name, value1, value2)
  
 if name == 'StaticBG' then
 
 startTime = 0.3;

	runTimer('BG', startTime);
    setProperty('StaticBG.alpha', 0.6);
    playAnim('StaticBG', 'move');
	playSound('staticBUZZ');
    end
end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'BG' then
setProperty('StaticBG.alpha', 0);
end

end