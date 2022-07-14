function onCreate()
    precacheImage('black');

	precacheImage('StartScreens/CircleCycles');
	precacheImage('StartScreens/TextCycles');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleCycles', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextCycles', -1280, 200);
	addLuaSprite('text', true);
        makeLuaSprite('credbox', 'box', 20, -1280);
         scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);
	
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
          
	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('slidedown', startTime+3);
	runTimer('beginsong', startTime+4);
	runTimer('slideup', startTime+9);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 500, 1, 'linear');
		doTweenX('textfly', 'text', 300, 1, 'linear');
	end
	if tag == 'fadeout' then
		doTweenAlpha('fadeblack', 'black', 0, 2, 'sineOut');
		doTweenAlpha('fadecircle', 'circle', 0, 2, 'sineOut');
		doTweenAlpha('fadetext', 'text', 0, 2, 'sineOut')
	end
	if tag == 'slidedown' then
doTweenY('move', 'credits', 50, 1, 'linear');
doTweenY('move1', 'credbox', 70, 1, 'linear');
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
	if tag == 'beginsong' then
		allowCountdown = true;
		startCountdown();
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
function onStartCountdown()
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elasped)
doTweenColor('ColorTween', 'timeBar', '445D82', 1, 'linear')
end
