allowCountdown = false;
function onCreatePost()
   addCharacterToList('Transform', 'dad');

   makeLuaSprite('black', 'black', 0, 0);
   addLuaSprite('black', true);
   makeLuaSprite('circle', 'StartScreens/CircleFaker', 1280, 0);
   addLuaSprite('circle', true);
   makeLuaSprite('text', 'StartScreens/TextFaker', -1280, 0);
   addLuaSprite('text', true);

   setObjectCamera('black', 'hud');
   setObjectCamera('circle', 'hud');
   setObjectCamera('text', 'hud');

   startTime = 0.3;

   runTimer('flyin', startTime);
   runTimer('fadeout', startTime+2.5);
   runTimer('beginsong', startTime+2);
   setTimeBarColors('311c73','000000')    
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'flyin' then
         doTweenX('circlefly', 'circle', -50, 1, 'cubeIn');
         doTweenX('textfly', 'text', -50, 1, 'cubeIn');
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

function onUpdate(elapsed)
  if curBeat >= 196 then
   doTweenZoom('wee', 'camGame', 1.1, 0.5, 'linear');
  end
  if curBeat >= 213 then
  setProperty('black.alpha',1) 
  end
  if curStep >= 768 then
  setProperty('iconP1.visible',false)
  setProperty('iconP2.visible',false)
  setProperty('healthBar.visible',false)
  setProperty('healthBarBG.visible',false)
  setProperty('scoreTxt.visible',false) 
end   
end