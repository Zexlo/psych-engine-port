	allowCountdown = false
	function onCreate()
	makeLuaSprite('skyX', 'Xstage/skyX', -820, -300);
	scaleObject('skyX', 0.5, 0.4);	
	makeLuaSprite('tree', 'Xstage/tree', 1150, -370);
	scaleObject('tree', 0.7, 0.7);
	
       makeLuaSprite('smflower', 'Xstage/smflower', 980, 460);
	scaleObject('smflower', 0.6, 0.6);

makeLuaSprite('smflower2', 'Xstage/smflower2', -200, 460);
	scaleObject('smflower2', 0.6, 0.6);


    makeLuaSprite('Hills2', 'Xstage/Hills2', -800, 420);
	scaleObject('Hills2', 0.5, 0.4);

	makeLuaSprite('Hills1', 'Xstage/Hills1', -800, -200);
	scaleObject('Hills1', 0.6, 0.5);

	makeLuaSprite('groundX', 'Xstage/groundX', -740, 600);
	scaleObject('groundX', 0.6, 0.5);
         makeAnimatedLuaSprite('fanim', 'Xstage/Weird', -400, 100);
	addAnimationByPrefix('fanim', 'idle', 'flower', 40, true);
	scaleObject('fanim', 0.8, 0.8);	
	objectPlayAnimation('fanim', 'flower', false);


	addLuaSprite('skyX', false);
	addLuaSprite('Hills1', false);
	addLuaSprite('Hills2', false);
	addLuaSprite('groundX', false);
	addLuaSprite('fanim', false);
	addLuaSprite('smflower', false);
	addLuaSprite('smflower2', false)
	addLuaSprite('tree', false);

if songName == 'Execution' then
allowCountdown = true
close(true)
else
	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleCycles', 1280, 200);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextCycles', -1280, 200);
	addLuaSprite('text', true);

	setObjectCamera('circle', 'other');
	setObjectCamera('black', 'other');
	setObjectCamera('text', 'other');

	startTime = 0.3;

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime+2.5);
	runTimer('beginsong', startTime+2.6);
end
end

function onStartCountdown()
	if not allowCountdown then
		return Function_Stop;
	end
	return Function_Continue;
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
	
	if tag == 'beginsong' then
		allowCountdown = true;
		startCountdown();
	end	
end