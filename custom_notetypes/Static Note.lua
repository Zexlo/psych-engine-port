function onCreate()
makeAnimatedLuaSprite('Static', 'screenstaticBG', 0, 0);
    addAnimationByPrefix('Static', 'idle', 'STATIC', 40, false);
    setObjectCamera('Static', 'hud');
    setProperty('Static.alpha', 0);
    addLuaSprite('Static', true);
  	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Static Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Static Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'STATICNOTES_assets'); -- Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.085'); -- Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0200'); -- Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); -- does missing have a penelty?
			end
		end
	end
	--debugPrint('Script started!')
end

function noteMiss(id, noteData, noteType, isSustainNote) 
	if noteType == 'Static Note' then
startTime = 0.3;

	runTimer('hit', startTime);
	  doTweenColor('bfColorTween', 'Static', 'FF0000', 0.2, 'linear');  
        setProperty('Static.alpha', 0.5);
        objectPlayAnimation('Static', 'idle', false);
        playSound('staticsound');
        
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'hit' then
setProperty('Static.alpha', 0);
end
end