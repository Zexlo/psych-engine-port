function onCreate()

  addCharacterToList('Fleetway1', 'dad');
  addCharacterToList('Fleetway2', 'dad');
  addCharacterToList('Fleetway3', 'dad');
  addCharacterToList('bf-super', 'bf');

    setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-fleetway-die'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'Chaosgameover'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
	
	setProperty('camHUD.alpha',0)  
  	
	makeLuaSprite('bars1', 'bar', 0, -80)
	makeLuaSprite('bars2', 'bar', 0, 650)	
	
	setObjectCamera('bars1', 'other');
	setObjectCamera('bars2', 'other');	

	scaleObject('bars1', 3, 1);
	scaleObject('bars2', 3, 1);	
	
	addLuaSprite('bars1', true);
	addLuaSprite('bars2', true);	
  
    makeLuaSprite('credbox', 'box', 380, -1280);
    scaleObject('credbox', 1.2, 1.3);
	addLuaSprite('credbox', true);

	makeLuaText('robo', 'INTRUDERS', 400, 450, 660)
	setObjectCamera('robo', 'other');
	setTextSize('robo', 30)
	setTextAlignment('robo', 'center')
	
	makeLuaText('weee', 'Wha- AHHHHHHHHH', 400, 450, 660)
	setObjectCamera('weee', 'other');
	setTextSize('weee', 30)
	setTextColor('weee', '0000FF')
	setTextAlignment('weee', 'center')

	
    makeLuaText('txt', 'CREDITS\n\nCODE\nAvery\nNebula\nCryBit\n\nARTWORK\nRightburst Ultra\nZekuta\nCogaming_Nz\n\nMUSIC\nJacaris\n\nCHARTING\nCryBit', 770, 250, -1280)
    setTextSize('txt', 40)
    addLuaText('txt')    

            
    setObjectCamera('credbox', 'hud');
	
--Cutscene segment
runTimer('cutscene', 1);
runTimer('end', 1.2);
--credits and song start		
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'cutscene' then 
	addLuaText('robo')
	setObjectOrder('robo', getObjectOrder('bars2')+1)	
	playSound('robot');
runTimer('end1', 1.2);	
	end

	if tag == '1' then
	if quote == (1) then  
    playSound('FleetLines/1', 1)
    elseif quote == (2) then
    playSound('FleetLines/2', 1)
	elseif quote == (3) then
    playSound('FleetLines/3', 1)
	elseif quote == (4) then
    playSound('FleetLines/4', 1)
	elseif quote == (5) then
    playSound('FleetLines/5', 1)
	elseif quote == (6) then
    playSound('FleetLines/6', 1)
	elseif quote == (7) then
    playSound('FleetLines/7', 1)
	elseif quote == (8) then
    playSound('FleetLines/8', 1)
    elseif quote == (9) then
    playSound('FleetLines/9', 1)
    elseif quote == (10) then
    playSound('FleetLines/10', 1)
    elseif quote == (11) then
    playSound('FleetLines/11', 1)	
    end
end	
	
	
	if tag == 'end1' then
	removeLuaText('robo',true)	
	runTimer('slidedown', 3.5);
	runTimer('beginsong', 3);
	runTimer('slideup', 8.5);

setProperty('hole.alpha', 0)	
 setProperty('sonc.alpha', 1)
  addAnimationByPrefix('sonc', 'idle', 'Chamber Sonic Fall', 24, false); 	 
	playAnim('hole', 'idle', false);
	playSound('sonic');	
	addLuaText('weee')
	setObjectOrder('weee', getObjectOrder('bars2')+1)		
	runTimer('beamer', 1.5)	
end
	if tag == 'slidedown' then	
playSound('beam')
	setProperty('beam.alpha', 0)
	setProperty('Charged.alpha', 1)
    addAnimationByPrefix('thing', 'idle','BGyellow', 24, true);
	playAnim('BGyellow', 'idle', true);
    playAnim('emeralds', 'idle', false); 
	doTweenAlpha('showHUD','camHUD', 1,0.5,'linear')
end
	if tag == 'slidedown' then	
doTweenY('move', 'txt', 80, 1, 'linear');
doTweenY('move1', 'credbox', 0, 1, 'linear');
end

	if tag == 'beginsong' then
		allowCountdown = true;		
		startCountdown();
end
       if tag == 'slideup' then
       doTweenY('move', 'txt', -1280, 0.5, 'linear');
     doTweenY('move1', 'credbox', -1280, 0.5, 'linear');         

       end
end

function onStartCountdown()
    setTimeBarColors('F6b949','000000')     
	if not allowCountdown then
		return Function_Stop;
	end
	doTweenY('move1', 'bars1', -5000, 0.5, 'linear')
	doTweenY('move2', 'bars2',1000, 0.5, 'linear')
		removeLuaText('weee')		
	return Function_Continue;
end

function onUpdate(elasped)
if curBeat >= 30 then
setProperty('dad.y',defaultOpponentY + math.sin( getPropertyFromClass('Conductor', 'songPosition')/crochet )*100 );
end

if curBeat == 0 then
setProperty('dad.alpha', 0);
doTweenY('setup1', 'dad', 700, 0.2, 'linear');
doTweenX('setup2', 'dad', 0, 0.2, 'linear');
end

if curBeat > 1 then
	setProperty('dad.alpha', 1);	
	doTweenY('lol1', 'dad', -600, 0.2, 'linear');
end

if curBeat == 6 then
doTweenX('lol', 'dad', -500, 1, 'linear');
end

if curBeat >= 64 and curBeat <=70 then
setObjectOrder('dad', getObjectOrder('boyfriend')+1)

else 
setObjectOrder('dad', getObjectOrder('boyfriend')-1)

end

if curStep == 1020 then
    
playSound(SUPERBF,1)
end
end

function onGameOverStart()
        quote = getRandomInt(1, 11)
         runTimer('1', 2, 1)
return Function_Continue
end

        
                    