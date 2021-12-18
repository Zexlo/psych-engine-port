local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('triple');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()
    addCharacterToList('Beast', 'dad');
    addCharacterToList('Eggman', 'dad');
    addCharacterToList('BOYFRIEND', 'bf');
    addCharacterToList('Knucks', 'gf');
     precacheImage('screenstatic');
  
end