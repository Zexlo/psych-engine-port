allowCountdown = false;
function onCreate()		
	precacheImage('sonicJUMPSCARE');


	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleTooSlow', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextTooSlow', -1280, 200);
	addLuaSprite('text', true);
	
	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');
	
    makeLuaSprite('credbox', 'box', 380, -1280);
    scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);
	
	makeLuaText('txt', 'CREDITS\n\nCODE\nJackie.exe\n\nARTWORK\nCherribun\nCogaming_Nz\n\nMUSIC\nMarStarBro\nSaster\n\nCHARTING\nWilde', 770, 250, -1280)
	setTextSize('txt', 40)
	addLuaText('txt')    
       
	setObjectCamera('credbox', 'hud');

	runTimer('slidedown', 4.5);
	runTimer('beginsong', 2.5);
	runTimer('slideup', 12);
	runTimer('flyin', 0.5);
	runTimer('fadeout', 2.5);		
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'slidedown' then
	doTweenY('move', 'txt', 100, 1, 'linear');
	doTweenY('move1', 'credbox', 0, 1, 'linear');


end
       if tag == 'slideup' then
       doTweenY('move', 'txt', -1280, 0.5, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.5, 'linear');         

       end
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 500, 1, 'linear');
		doTweenX('textfly', 'text', 300, 1, 'linear');
	end
	if tag == 'fadeout' then
		doTweenAlpha('fadeblack', 'black', 0, 2, 'sineOut');
		doTweenAlpha('fadecircle', 'circle', 0, 2, 'sineOut');
		doTweenAlpha('fadetext', 'text', 0, 2, 'sineOut')
	end
	
	if tag == 'beginsong' then	
	allowCountdown = true;	
		startCountdown();	
	end
	end

function onStartCountdown()
	setTimeBarColors('166DBB','000000') 	
if not allowCountdown then
	return Function_Stop;
	end
	return Function_Continue;
end	

function onUpdate(elasped)
	for i = 0,3 do
	noteTweenX(i, i,-1000, 0.2, 'linear')
end		
	if curBeat >= 190 and curBeat <=198 or curStep >= 1306 and curStep <=1432 then
doTweenZoom('wee', 'camGame', 1.3, 0.5, 'linear');
else
end
if curStep >= 364 then
setTextColor('txt', 'FF0000')
end
end
