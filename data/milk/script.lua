allowCountdown = false;
function onCreate()
    makeLuaSprite('credbox', 'box', 380, -1280);
    scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/Sunky', -1200, 0);
	addLuaSprite('circle', true);
	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');	
	

   makeLuaText('txt', 'CREDITS\n\nCODE\nJackie.exe\n\nARTWORK\nCogaming_Nz\nStankfield\n\nMUSIC\nSqueak\n\nCHARTING\nNiffirg', 770, 250, -1280)
   setTextSize('txt', 40)
   addLuaText('txt')    
		       
	setObjectCamera('credbox', 'hud');


	runTimer('slidedown', 3.5);
	runTimer('slideup', 9.5);
	runTimer('flyin', 0.5);
	runTimer('fadeout', 2);
	runTimer('beginsong', 4.5);	
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 100, 0.2, 'elasticOut');
        playSound('flatBONK', 1, 'thefunny');
		
	end
	if tag == 'fadeout' then
		doTweenAlpha('fadeblack', 'black', 0, 2, 'sineOut');
		doTweenAlpha('fadecircle', 'circle', 0, 2, 'sineOut');
		doTweenAlpha('fadetext', 'text', 0, 2, 'sineOut');
	end

	if tag == 'beginsong' then
		allowCountdown = true;
		startCountdown();
	end	
	
	if tag == 'slidedown' then
doTweenY('move', 'txt', 100, 1, 'linear');
doTweenY('move1', 'credbox', 0, 1, 'linear');

end
       if tag == 'slideup' then
       doTweenY('move', 'txt', -1280, 0.5, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.5, 'linear');         
       end
end

 function onGameOver()
setObjectCamera('boyfriend', 'hud');
return Function_Continue;
 end
 
 function onStartCountdown()
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate(elasped)
   if not middlescroll then
   noteTweenX('play0', 0, 190, 0.01, 'SineInOut')
	noteTweenX('play1', 1, 300, 0.01, 'SineInOut')
	noteTweenX('play2', 2, 410, 0.01, 'SineInOut')
	noteTweenX('play3', 3, 520, 0.01, 'SineInOut')
   noteTweenX('play4', 4, 660, 0.01, 'SineInOut')
	noteTweenX('play5', 5, 770, 0.01, 'SineInOut')
	noteTweenX('play6', 6, 880, 0.01, 'SineInOut')
	noteTweenX('play7', 7, 990, 0.01, 'SineInOut')
   else
      noteTweenX('play0', 0, 190, 0.01, 'SineInOut')
      noteTweenX('play1', 1, 300, 0.01, 'SineInOut')
      noteTweenX('play2', 2, 880, 0.01, 'SineInOut')
      noteTweenX('play3', 3, 990, 0.01, 'SineInOut') 
   end      
end
