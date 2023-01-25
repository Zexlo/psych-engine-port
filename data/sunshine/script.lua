function onCreate()
	addCharacterToList('Tails_Doll_Alt', 'dad');


--setPropertyFromClass('lime.app.Application', 'current.window.width', 854)
--setPropertyFromClass('lime.app.Application', 'current.window.height', 480)
        makeLuaSprite('credbox', 'box', 390, -1280);
         scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);

        makeLuaSprite('ready', 'countdown/ready', 340,240);
	scaleObject('ready', 0.8, 0.8);        
	addLuaSprite('ready', true);
	
      makeLuaSprite('set', 'countdown/set', 340, 240);
	scaleObject('set', 0.8, 0.8);      
       setProperty('set.alpha', 0);      
	addLuaSprite('set', true);
	
      makeLuaSprite('go', 'countdown/go', 350, 210);
      	scaleObject('go', 0.9, 0.9);
             setProperty('go.alpha', 0);
	addLuaSprite('go', true);

--makeLuaSprite('VHScover','black', 0, 0);
     --setProperty('VHScover.alpha', 0.6); 
     --addLuaSprite('VHScover', true);	   

      --initLuaShader('VHS')
--setSpriteShader('dad', 'VHS')

	
       makeLuaText('credits', 'CREDITS', 770, 250, -1280)
       setTextSize('credits', 30)
       addLuaText('credits')
       makeLuaText('code', 'CODE', 770, 250, -1280)
         setTextSize('code', 30)
         addLuaText('code')
       makeLuaText('jakie', 'Jackie.exe', 770, 250, -1280)
          setTextSize('jakie', 30)
          addLuaText('jakie')
       makeLuaText('art', 'CryBit', 770, 250, -1280)
          setTextSize('art', 30)
          addLuaText('art')
       makeLuaText('bun', 'ARTWORK', 770, 250, -1280)
          setTextSize('bun', 30)
          addLuaText('bun')
       makeLuaText('co', 'Zekuta', 770, 250, -1280)
          setTextSize('co', 30)
          addLuaText('co')
       makeLuaText('music', 'MUSIC', 770, 250, -1280)
          setTextSize('music', 30)
          addLuaText('music')
       makeLuaText('mar', 'MarStarBro', 770, 250, -1280)
          setTextSize('mar', 30)
          addLuaText('mar')
       makeLuaText('sas', 'Uptaunt', 770, 250, -1280)
          setTextSize('sas', 30)
          addLuaText('sas')
       makeLuaText('chart', 'CHARTING', 770, 250, -1280)
          setTextSize('chart', 30)
          addLuaText('chart')     
      makeLuaText('niff', 'niffirg', 770, 250, -1280)
          setTextSize('niff', 30)
          addLuaText('niff')
      makeLuaText('cry', 'CryBit', 770, 250, -1280)
          setTextSize('cry', 30)
          addLuaText('cry')

	setObjectCamera('credbox', 'hud');
	setObjectCamera('ready', 'hud');
	setObjectCamera('set', 'hud');
	setObjectCamera('go', 'hud');	
	setObjectCamera('VHScover', 'hud')	 
               
    	startTime = 0.5;
      
          	runTimer('slidedown', startTime+2);
          runTimer('beginsong', startTime-0.3);
      runTimer('wait', startTime+0.9);
      runTimer('wait1', startTime+1.8);
      runTimer('hidego', startTime+2.8); 
	runTimer('slideup', startTime+7);	
end

-- function onCreatePost()
	 -- runHaxeCode([[
 -- FlxG.resizeGame(1280, 960)
	-- ]])
	-- end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'beginsong' then
		allowCountdown = true;
		startCountdown();
       playSound('ready');     
   end
	if tag == 'wait' then
    setProperty('ready.alpha', 0);	
       setProperty('set.alpha', 1);	              
      playSound('set');
    end       
	if tag == 'wait1' then
   setProperty('set.alpha', 0);	
       setProperty('go.alpha', 1);       
      playSound('go');
end
if tag == 'hidego' then
      setProperty('go.alpha', 0);
      end	       

	if tag == 'slidedown' then	
doTweenY('move', 'credits', 50, 1, 'linear');
doTweenY('move1', 'credbox', 0, 1, 'linear');
doTweenY('move2', 'code', 150, 1, 'linear');
doTweenY('move3', 'jakie', 200, 1, 'linear');
doTweenY('move4', 'art', 230, 1, 'linear');
doTweenY('move5', 'bun', 280, 1, 'linear');
doTweenY('move6', 'co', 310, 1, 'linear');
doTweenY('move13', 'cry', 340, 1, 'linear');
doTweenY('move7', 'music', 390, 1, 'linear');
doTweenY('move8', 'mar', 420, 1, 'linear');
doTweenY('move10', 'sas', 450, 1, 'linear');
doTweenY('move11', 'chart', 500, 1, 'linear');
doTweenY('move12', 'niff', 530, 1, 'linear');
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
doTweenY('move12', 'niff', -1280, 1, 'linear');
doTweenY('move13', 'cry', -1280, 1, 'linear');

       end
end
function onStartCountdown()
	setTimeBarColors('E69138','000000')    
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate()
--setShaderFloat('dad', 'iTime', os.clock())
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