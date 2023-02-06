function onCreate()
	addCharacterToList('Tails_Doll_Alt', 'dad');
	initLuaShader('old tv')	

--setPropertyFromClass('lime.app.Application', 'current.window.width', 854)
--setPropertyFromClass('lime.app.Application', 'current.window.height', 480)
        makeLuaSprite('credbox', 'box', 390, -1280);
         scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);

        makeLuaSprite('ready', 'countdown/ready', 340,240);
	scaleObject('ready', 0.8, 0.8);
   setProperty('ready.alpha', 0);	         
	addLuaSprite('ready', true);
	
      makeLuaSprite('set', 'countdown/set', 340, 240);
	scaleObject('set', 0.8, 0.8);      
       setProperty('set.alpha', 0);      
	addLuaSprite('set', true);
	
      makeLuaSprite('go', 'countdown/go', 350, 210);
      	scaleObject('go', 0.9, 0.9);
             setProperty('go.alpha', 0);
	addLuaSprite('go', true);
	
      makeLuaText('txt', 'CREDITS\n\nCODE\nJackie.exe\nCryBit\n\nARTWORK\nZekuta\n\nMUSIC\nMarStarBro\nUptaunt\n\nCHARTING\nNiffirg\nCryBit', 770, 250, -1280)
      setTextSize('txt', 40)
      addLuaText('txt')    

	setObjectCamera('credbox', 'hud');
	setObjectCamera('ready', 'hud');
	setObjectCamera('set', 'hud');
	setObjectCamera('go', 'hud');		 
      
      runTimer('beginsong', 1);
      runTimer('count', 1.2); 
      runTimer('wait', 2);
      runTimer('wait1', 3);
      runTimer('slidedown', 3.4); 
      runTimer('hidego', 3.5); 
	   runTimer('slideup', 7.5);	
end

-- function onCreatePost()
	 -- runHaxeCode([[
 -- FlxG.resizeGame(1280, 960)
	-- ]])
	-- end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'beginsong' then
      setProperty('ready.alpha', 1);	  
       playSound('ready');     
   
   elseif tag == 'count' then
      allowCountdown = true;
		startCountdown();

	elseif tag == 'wait' then
    setProperty('ready.alpha', 0);	
       setProperty('set.alpha', 1);	              
      playSound('set');

	elseif tag == 'wait1' then
   setProperty('set.alpha', 0);	
       setProperty('go.alpha', 1);       
      playSound('go');

   elseif tag == 'hidego' then
      setProperty('go.alpha', 0);       

	elseif tag == 'slidedown' then	
   doTweenY('move', 'txt', 100, 1, 'linear');
   doTweenY('move1', 'credbox', 0, 1, 'linear');


elseif tag == 'slideup' then
   doTweenY('move', 'credbox', -1280, 0.5, 'linear');
   doTweenY('move1', 'txt', -1280, 0.5, 'linear');
      end
   end

function onStartCountdown()
	setTimeBarColors('E69138','000000')    
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
end


function onUpdate(elasped)
if curBeat >= 147 and curBeat <215 then
  removeLuaSprite('TailsBG', false);
    noteTweenX('play0', 4, 415, 0.05, 'SineInOut')
	noteTweenX('play1', 5, 525, 0.05, 'SineInOut')
	noteTweenX('play2', 6, 635, 0.05, 'SineInOut')
	noteTweenX('play3', 7, 745, 0.05, 'SineInOut')
end

if curBeat >= 147 and curBeat <215 and downscroll then

for i = 4,7 do
	noteTweenY(i, i, 550, 0.001, 'SineInOut')
	end	
end	
	
if curBeat >=215 and not middlescroll then
	addLuaSprite('TailsBG', false);
	setPropertyFromGroup('playerStrums', 0, 'x', defaultPlayerStrumX0)
	setPropertyFromGroup('playerStrums', 1, 'x', defaultPlayerStrumX1)
	setPropertyFromGroup('playerStrums', 2, 'x', defaultPlayerStrumX2)
	setPropertyFromGroup('playerStrums', 3, 'x', defaultPlayerStrumX3)
	setPropertyFromGroup('playerStrums', 4, 'x', defaultPlayerStrumX4)
	setPropertyFromGroup('opponentStrums', 0, 'x', defaultOpponentStrumX0 + 40)
	setPropertyFromGroup('opponentStrums', 1, 'x', defaultOpponentStrumX1 + 43)
	setPropertyFromGroup('opponentStrums', 2, 'x', defaultOpponentStrumX2 + 40)
	setPropertyFromGroup('opponentStrums', 3, 'x', defaultOpponentStrumX3 + 46)
	setPropertyFromGroup('opponentStrums', 4, 'x', defaultOpponentStrumX4 + 49)	
elseif curBeat >=215 and middlescroll then
	addLuaSprite('TailsBG', false);
  end
  
if curBeat >=215 and downscroll then
for i = 4,7 do
	noteTweenY(i, i, 570, 0.001, 'SineInOut')
	end
end	
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
 if direction == 'Up' then
addHaxeLibrary('FlxTrail', 'flixel.addons.effects')
runHaxeCode('game.addBehindDad(new FlxTrail(game.dad, null, 4, 24, 0.3, 0.069));')-- Works the same as goodNoteHit, but for Opponent's notes being hit
end
end