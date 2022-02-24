local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('Phase2');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
    addCharacterToList('P2Sonic', 'dad');
    addCharacterToList('SonicPixel', 'dad');
    addCharacterToList('BOYFRIEND', 'bf');
    addCharacterToList('Pixel_gf', 'gf');
     addCharacterToList('gf', 'gf');


    precacheImage('Greenhill');
    precacheImage('screenstatic');
    precacheImage('screenstaticBG');
    precacheImage('sonicJUMPSCARE');

end