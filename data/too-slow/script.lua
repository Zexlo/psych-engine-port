 local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('SonicEXE');
		allowCountdown = true;
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