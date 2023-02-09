allowCountdown = false;
videoDelay = false;

function onCreate()

makeLuaSprite('skyBG', 'YCR/sky', -1100, -300); -- X,Y pos   
makeLuaSprite('Btrees', 'YCR/trees', -1100, -300); -- X,Y pos
makeLuaSprite('Ftrees', 'YCR/TreesFront', -1100, -100); -- X,Y pos
makeLuaSprite('Fgrass', 'YCR/Grass', -1100, -200); -- X,Y pos
makeLuaSprite('Bgrass', 'YCR/GrassBack', -1100, -100); -- X,Y pos
makeAnimatedLuaSprite('Bstatic','BeastBG',-1150,-300);
scaleObject('Bstatic',6,6)
addAnimationByPrefix('Bstatic','spoop','staticgo',24,true)
setProperty('Bstatic.alpha',0)
addLuaSprite('skyBG', false);
addLuaSprite('Bgrass', false);	
addLuaSprite('Btrees', false);
addLuaSprite('Bstatic',false);
addLuaSprite('Fgrass', false);	
addLuaSprite('Ftrees', false);
playAnim('Bstatic',spoop,true);

	addCharacterToList('Beast', 'dad');
	addCharacterToList('eggman', 'dad');
	addCharacterToList('knux', 'gf');

	makeLuaSprite('black', 'black', 0, 0);
	addLuaSprite('black', true);
	makeLuaSprite('circle', 'StartScreens/CircleTripleTrouble', 1280, 0);
	addLuaSprite('circle', true);
	makeLuaSprite('text', 'StartScreens/TextTripleTrouble', -1280, 0);
	addLuaSprite('text', true);

	setObjectCamera('black', 'other');
	setObjectCamera('circle', 'other');
	setObjectCamera('text', 'other');

	runTimer('flyin', 0.5);
	runTimer('fadeout', 2.5);
	runTimer('beginsong', 2.5);
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
	
	noteTweenX('hideit',2,-1000,0.2,'linear')
	noteTweenX('fix1',0,92,0.2,'linear')
	noteTweenX('fix2',1,204,0.2,'linear')
	noteTweenX('fix3',3,316,0.2,'linear')
	noteTweenX('fix4',4,428,0.2,'linear')	
	doTweenZoom('wee', 'camGame', 1.4, 0.2, 'linear');	
	setTimeBarColors('6C18C5','000000') 
			
	if not allowCountdown then --Block the first countdown
		return Function_Stop;
	end
	return Function_Continue;
end

function onUpdatePost(elapsed)

	if dadName == 'Beast' then
		setProperty('Bstatic.alpha',1) 
	else
		setProperty('Bstatic.alpha',0)
	runHaxeCode([[
		fhandle = openFile("FUNFUNFUN.txt")
		if( fhandle == 0 )
		   print("Error: Could not open file!")
		else
		   closeFile fhandle
		endif

	]])	
	end

	if inGameOver == false and (curBeat >= 324 and curBeat < 708) then
	noteTweenX('hideit',2,-1000,0.2,'linear')
	noteTweenX('fix1',0,732,0.2,'linear')
	noteTweenX('fix2',1,844,0.2,'linear')
	noteTweenX('fix3',3,956,0.2,'linear')
	noteTweenX('fix4',4,1068,0.2,'linear')
	setProperty('boyfriend.flipX', true)
	doTweenX('movebf','boyfriend',-400,0.2,'linear')		
	if dadName == 'Beast' then	
		setProperty('dad.flipX', true)
		doTweenX('movedad','dad',400,0.2,'linear')			
	end

elseif curBeat >= 708 then
	noteTweenX('hideit',2,-1000,0.2,'linear')
	noteTweenX('fix1',0,92,0.2,'linear')
	noteTweenX('fix2',1,204,0.2,'linear')
	noteTweenX('fix3',3,316,0.2,'linear')
	noteTweenX('fix4',4,428,0.2,'linear')
	setProperty('boyfriend.flipX', false)	
	close(true)	
end
end