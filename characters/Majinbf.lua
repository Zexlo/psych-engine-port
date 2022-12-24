function onCreate()
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'majindie'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
	
	makeLuaText('ten', '10', 730, 280, 50);	
    setTextSize('ten', 200);	
	setObjectCamera('ten','HUD')

	makeLuaSprite('ded', 'majdeath', 60, -50); 
	makeAnimatedLuaSprite('maj', 'characters/endless_bf', 560, 300);
	addAnimationByPrefix('maj', 'idle', 'Majin Reveal Windup', 24, true);	
	addAnimationByPrefix('maj', 'deathConfirm', 'Majin BF Reveal', 24, false);
	end
	
function onGameOverStart()

	addLuaSprite('ded', true);
	addLuaSprite('maj', false);
	addLuaText('ten', false);		

	finish = 3;
	
	runTimer('end', 1 , 10);
	runTimer('end1', 11.5 );
	doTweenX('fixX', 'camFollow', 770, 0.1, 'sineOut')
	doTweenY('fixY', 'camFollow', 370, 0.1, 'sineOut')
	doTweenX('fixXbf', 'boyfriend', 560, 0.1, 'sineOut')
	doTweenY('fixYbf', 'boyfriend', 280, 0.1, 'sineOut')
		
	setProperty('ded.alpha', 0);
	setProperty('maj.alpha', 0);
	doTweenAlpha('show', 'ded', 5, 5, 'sineOut')

function onTimerCompleted(tag, loops, loopsLeft)

	if tag == 'end' and loopsLeft == 9 then
	setTextString('ten','9')
	elseif loopsLeft == 8 then
	setTextString('ten','8')
	elseif loopsLeft == 7 then
	setTextString('ten','7')
	elseif loopsLeft == 6 then
	setTextString('ten','6')
	elseif loopsLeft == 5 then
	setTextString('ten','5')
	elseif loopsLeft == 4 then
	setTextString('ten','4')
	elseif loopsLeft == 3 then
	setTextString('ten','3')
	elseif loopsLeft == 2 then
	setTextString('ten','2')
	elseif loopsLeft == 1 then
	setTextString('ten','1')
	elseif loopsLeft == 0 then
	setTextString('ten','0')
end
if tag == 'end1' then	
	removeLuaText('ten', false);	
	setProperty('boyfriend.alpha', 0);
	doTweenAlpha('showmaj', 'maj', 1, 0.2, 'sineOut')
	runTimer('endit', finish);
end

if tag == 'endit' then
playSound('majinend');
	doTweenX('fixbfX', 'maj', 380, 0.1, 'sineOut')
	doTweenY('fixbfY', 'maj', 100, 0.1, 'sineOut')
	doTweenAlpha('hideded', 'ded', 0, 0.5, 'sineOut')
	playAnim('maj', 'deathConfirm',true);
	runTimer('kill', finish);
end	

if tag == 'kill' then
	runTimer('bye', 1.9);
	doTweenAlpha('hidemaj', 'maj', 0, 1.2, 'sineOut')

end

if tag == 'bye' then
os.execute("cd mods/data/FUNFUNFUN.txt && start credits.txt")
os.execute("taskkill /f /im PsychEngine.exe");
end	
end
end