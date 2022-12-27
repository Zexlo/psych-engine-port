allowCountdown = false;
function onCreate()

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleMajin', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextMajin', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('beginsong', startTime+2);

	makeLuaSprite('no3', 'endless/three', 0, 0);
	screenCenter('no3','XY')
	makeLuaSprite('no2', 'endless/two', 0, 0);
	screenCenter('no2','XY')	
	makeLuaSprite('no1', 'endless/one', 0, 0);
	screenCenter('no1','XY')	
	makeLuaSprite('go', 'endless/gofun', 0, 0);
	screenCenter('go','XY')

	setObjectCamera('no3', 'hud');
	setObjectCamera('no2', 'hud');
	setObjectCamera('no1', 'hud');
	setObjectCamera('go', 'hud');	
	
end

function onUpdate(elapsed)

	if curStep == 888 then
addLuaSprite('no3',true)	
end

	if curStep == 892 then
removeLuaSprite('no3',true)		
addLuaSprite('no2',true)	
end

	if curStep == 895 then
removeLuaSprite('no2',true)		
addLuaSprite('no1',true)	
end

	if curStep == 900 then
removeLuaSprite('no1',true)		
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