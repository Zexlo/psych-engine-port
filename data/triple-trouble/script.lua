allowCountdown = false;
videoDelay = false;

function onCreate()
	if isStoryMode and not seenCutscene then
		videoDelay = true;
	end

	addCharacterToList('Beast', 'dad');
	addCharacterToList('Eggman', 'dad');
	addCharacterToList('Knucks', 'gf');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleTripleTrouble', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextTripleTrouble', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'hud');
	setObjectCamera('circle', 'hud');
	setObjectCamera('text', 'hud');

	startTime = 0.3;
	if videoDelay then 
		startTime = 3; -- cutscene delay
	end

	runTimer('flyin', startTime);
	runTimer('fadeout', startTime + 2);
	runTimer('beginsong', startTime + 3);
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

function onCountdownTick()
	
	noteTweenX('hideit',2,-1000,0.2,'linear')
	noteTweenX('fix1',0,92,0.2,'linear')
	noteTweenX('fix2',1,204,0.2,'linear')
	noteTweenX('fix3',3,316,0.2,'linear')
	noteTweenX('fix4',4,428,0.2,'linear')	
	doTweenZoom('wee', 'camGame', 1.4, 0.2, 'linear');	
	setTimeBarColors('6C18C5','000000') 		
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('triple');
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdate()
if curBeat >= 324 and curBeat <= 708 and inGameOver == false then
	setProperty('boyfriend.flipX', true)
	doTweenX('moveBf','boyfriend',-400,0.2,'linear')
	if dadName == 'Beast' then
		setProperty('dad.flipX', true)
		doTweenX('movedad','dad',400,0.2,'linear')			
	end		
elseif curBeat >= 708 then
	doTweenX('moveBf','boyfriend',400,0.2,'linear')
	setProperty('boyfriend.flipX', false)		
end
end