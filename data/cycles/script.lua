function onCreatePost()
   setTimeBarColors('445D82','000000') 
        makeLuaSprite('credbox', 'box', 390, -1280);
         scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);
	
	setObjectCamera('credbox', 'HUD');
   makeLuaText('txt', 'CREDITS\n\nCODE\nJackie.exe\nCryBit\n\nARTWORK\nJoeDoughBoi\nCogaming_Nz\nAuthur/ADJ\n\nMUSIC\nUptaunt\nVania', 770, 250, -1280)
   setTextSize('txt', 40)
   addLuaText('txt')    	  
          
	runTimer('slidedown', 5);
	runTimer('slideup', 12);
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
   doTweenY('move', 'txt', 100, 1, 'linear');
   doTweenY('move1', 'credbox', 0, 1, 'linear');


end
       if tag == 'slideup' then
     doTweenY('move', 'txt', -1280, 0.5, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.5, 'linear');         


       end
end

function onGameOverStart()
        quote = getRandomInt(1, 6)
         runTimer('1', 2, 1)
return Function_Continue
end