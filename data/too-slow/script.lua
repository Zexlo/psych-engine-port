 local allowCountdown = false
 local stops = 0
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('SonicEXE');
		end
if not allowCountdown then		
makeLuaSprite('CircleFaker', 'CircleFaker', -200, 200);
addLuaSprite('CircleFaker',true);

if stops == 1 then
	allowCountdown = true;
	setProperty('CircleFaker.visible',false)
end	
stops  = stops + 1	
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
precacheSound('staticsound');
precacheImage('sonicJUMPSCARE');
precacheImage('screenstatic');
precacheSound('Jumpscare');
    end