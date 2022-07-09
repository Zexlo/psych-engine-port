allowCountdown = false;
function onCreate()
   addCharacterToList('Transform', 'dad');

   precacheImage('black');

   precacheImage('StartScreens/CircleFaker');
   precacheImage('StartScreens/TextFaker');

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