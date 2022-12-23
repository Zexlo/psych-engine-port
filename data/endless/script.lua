allowCountdown = false;
function onCreate()

	--setPropertyFromClass('GameOverSubstate', 'characterName', 'Majinbf'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'majindie'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/


	makeLuaSprite('3', 'endless/three', 0, 0);
	screenCenter('3','XY')
	makeLuaSprite('2', 'endless/two', 0, 0);
	screenCenter('2','XY')	
	makeLuaSprite('1', 'endless/one', 0, 0);
	screenCenter('1','XY')	
	makeLuaSprite('go', 'endless/gofun', 0, 0);
	screenCenter('go','XY')

	setObjectCamera('3', 'hud');
	setObjectCamera('2', 'hud');
	setObjectCamera('1', 'hud');
	setObjectCamera('go', 'hud');	
	
	-- addLuaSprite('3', true);
	-- addLuaSprite('2', true);
	-- addLuaSprite('1', true);
	-- addLuaSprite('go', true);
	
	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleMajin', -1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextMajin', -1280, 0);
	addLuaSprite('text', true);

	-- makeLuaText('ten', '10', 730, 360, 280);
	-- makeLuaText('nine', '10', 730, 560, 280);
	-- makeLuaText('eight', '10', 730, 560, 280);
	-- makeLuaText('seven', '10', 730, 560, 280);
	-- makeLuaText('six', '10', 730, 560, 280);
	-- makeLuaText('five', '10', 730, 560, 280);
	-- makeLuaText('four', '10', 730, 560, 280);
	-- makeLuaText('three', '10', 730, 560, 280);
	-- makeLuaText('two', '10', 730, 560, 280);
	-- makeLuaText('one', '10', 730, 560, 280);	

	makeLuaSprite('ded', 'majdeath', 60, -50); 
	makeAnimatedLuaSprite('maj', 'characters/endless_bf', 560, 300);
	addAnimationByPrefix('maj', 'idle', 'Majin Reveal Windup', 24, true);	
	addAnimationByPrefix('maj', 'deathConfirm', 'Majin BF Reveal', 24, false);	
	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('beginsong', startTime+2);
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'flyin' then
		doTweenX('circlefly', 'circle', 0, 1, 'linear');
		doTweenX('textfly', 'text', 0, 1, 'linear');
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
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
end


function onUpdate(elasped)
	doTweenColor('ColorTween', 'timeBar', '000000', 1, 'linear')

	if curStep == 888 then
addLuaSprite('3',true)	
end

	if curStep == 892 then
removeLuaSprite('3',true)		
addLuaSprite('2',true)	
end

	if curStep == 895 then
removeLuaSprite('2',true)		
addLuaSprite('1',true)	
end

	if curStep == 900 then
removeLuaSprite('1',true)		
addLuaSprite('go',true)	
end
	if curStep >= 905 then
removeLuaSprite('go',true)		
end
end

-- function noteMiss(id, noteData, noteType, isSustainNote)
-- if misses >= 10 then
-- setProperty('health',0)
-- end
-- end


function onTweenCompleted(tag)
if tag == 'fadetext' then
removeLuaSprite('black',true)
removeLuaSprite('circle',true)
removeLuaSprite('text',true)
	end
	end
	
	
function onGameOverStart()

	addLuaSprite('ded', true);
	addLuaSprite('maj', false);
	
    -- addLuaSprite('ten', false);	
    -- addLuaSprite('nine', false);	
    -- addLuaSprite('eight', false);	
    -- addLuaSprite('seven', false);	
    -- addLuaSprite('six', false);	
    -- addLuaSprite('five', false);	
    -- addLuaSprite('four', false);	
    -- addLuaSprite('three', false);	
    -- addLuaSprite('two', false);	
    -- addLuaSprite('one', false);	

	start = 10;
	finish = 3;
	--countdown = 1;
	
	runTimer('end', start);
	--runTimer('a', countdown);
	
	doTweenX('fixX', 'camFollow', 750, 0.2, 'sineOut')
	doTweenY('fixY', 'camFollow', 350, 0.2, 'sineOut')
	doTweenX('fixXbf', 'boyfriend', 560, 0.2, 'sineOut')
	doTweenY('fixYbf', 'boyfriend', 280, 0.2, 'sineOut')
	
    -- setTextSize('ten', 40);	
    -- setTextSize('nine', 40);	
    -- setTextSize('eight', 40);	
    -- setTextSize('seven', 40);	
    -- setTextSize('six', 40);	
    -- setTextSize('five', 40);	
    -- setTextSize('four', 40);	
    -- setTextSize('three', 40);	
    -- setTextSize('two', 40);	
    -- setTextSize('one', 40);		
	
	setProperty('ded.alpha', 0);
	setProperty('maj.alpha', 0);
	doTweenAlpha('show', 'ded', 5, 5, 'sineOut')

function onTimerCompleted(tag, loops, loopsLeft)

if tag == 'end' then
	setProperty('boyfriend.alpha', 0);
	doTweenAlpha('showmaj', 'maj', 1, 0.2, 'sineOut')
runTimer('endit', finish);
--runTimer('b', countdown);
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
	exitSong(true)
end	
end
end