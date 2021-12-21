function onCreate()
makeAnimatedLuaSprite('Static', 'screenstatic', 0, 0); -- "234" = sprite X pos, "567" = sprite Y pos
    addAnimationByPrefix('Static', 'idle', 'screenSTATIC', 80, false); -- "24" = framerate of animation, "false" = does the animation loop
    setObjectCamera('Static', 'hud'); -- shows up in the camera center as he should
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
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function noteMiss(id, noteData, noteType, isSustainNote) 
	if noteType == 'Static Note' then
	  doTweenColor('bfColorTween', 'Static', 'FF0000', 1, 'linear');
        setProperty('Static.alpha', 255); -- **after one static note is hit, the alpha will always be 255 and so this function is redundant... but this is fine
        objectPlayAnimation('Static', 'idle', true); -- play the graphic's animation
        -- **the added 'true' in there  -------/|\  causes the animation to reset upon hitting another static note
        -- **otherwise it may just play through and stop awkwardly
        playSound('staticsound'); -- **this still needs to be changed to your static sound file
    end
end