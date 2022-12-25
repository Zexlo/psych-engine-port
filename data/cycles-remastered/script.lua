function onCreate()

        makeLuaSprite('credbox', 'box', 390, -1280);
         scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);
	
	setObjectCamera('credbox', 'HUD');	
       makeLuaText('credits', 'CREDITS', 730, 250, -1280)
       setTextSize('credits', 30)
       addLuaText('credits')
       makeLuaText('code', 'CODE', 730, 250, -1280)
         setTextSize('code', 30)
         addLuaText('code')
       makeLuaText('jakie', 'Jackie.exe', 730, 250, -1280)
          setTextSize('jakie', 30)
          addLuaText('jakie')
       makeLuaText('art', 'ARTWORK', 730, 250, -1280)
          setTextSize('art', 30)
          addLuaText('art')
       makeLuaText('bun', 'JoeDoughBoi', 730, 250, -1280)
          setTextSize('bun', 30)
          addLuaText('bun')
       makeLuaText('co', 'Cogaming', 730, 250, -1280)
          setTextSize('co', 30)
          addLuaText('co')
       makeLuaText('music', 'Authur/ADJ', 730, 250, -1280)
          setTextSize('music', 30)
          addLuaText('music')
       makeLuaText('mar', 'MUSIC', 730, 250, -1280)
          setTextSize('mar', 30)
          addLuaText('mar')
       makeLuaText('sas', 'Uptaunt', 730, 250, -1280)
          setTextSize('sas', 30)
          addLuaText('sas')
       makeLuaText('chart', 'Vania', 730, 250, -1280)
          setTextSize('chart', 30)
          addLuaText('chart')     
          
	startTime = 0.3;

	runTimer('slidedown', startTime+5);
	runTimer('slideup', startTime+11);
end

function onTimerCompleted(tag, loops, loopsLeft)

if tag == '1' then
	if quote == (1) then  
    playSound('XLines/1', 1)
    elseif quote == (2) then
    playSound('XLines/2', 1)
	elseif quote == (3) then
    playSound('XLines/3', 1)
	elseif quote == (4) then
    playSound('XLines/4', 1)
	elseif quote == (5) then
    playSound('XLines/5', 1)
	elseif quote == (6) then	
	playSound('XLines/6', 1)
	end
end	

	if tag == 'slidedown' then
doTweenY('move', 'credits', 50, 1, 'linear');
doTweenY('move1', 'credbox', 0, 1, 'linear');
doTweenY('move2', 'code', 150, 1, 'linear');
doTweenY('move3', 'jakie', 200, 1, 'linear');
doTweenY('move4', 'art', 250, 1, 'linear');
doTweenY('move5', 'bun', 290, 1, 'linear');
doTweenY('move6', 'co', 320, 1, 'linear');
doTweenY('move7', 'music', 350, 1, 'linear');
doTweenY('move8', 'mar', 410, 1, 'linear');
doTweenY('move10', 'sas', 440, 1, 'linear');
doTweenY('move11', 'chart', 470, 1, 'linear');

end
       if tag == 'slideup' then
       doTweenY('move', 'credits', -1280, 1, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.4, 'linear');         
       doTweenY('move2', 'code', -1280, 1, 'linear');
       doTweenY('move3', 'jakie', -1280, 1, 'linear');          
       doTweenY('move4', 'art', -1280, 1, 'linear');
       doTweenY('move5', 'bun', -1280, 1, 'linear');                 
       doTweenY('move6', 'co', -1280, 1, 'linear');
     doTweenY('move7', 'music', -1280, 1, 'linear');
     doTweenY('move8', 'mar', -1280, 1, 'linear');
     doTweenY('move10', 'sas', -1280, 1, 'linear');
     doTweenY('move11', 'chart', -1280, 1, 'linear');

       end
end

function onUpdate(elasped)
doTweenColor('ColorTween', 'timeBar', '445D82', 1, 'linear')
end

function onGameOverStart()
        quote = getRandomInt(1, 6)
         runTimer('1', 2, 1)
return Function_Continue
end