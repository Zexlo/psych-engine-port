function onCreate()
     
     makeLuaSprite('Greenhill', 'Greenhill', -250, -100);
   setScrollFactor('Greenhill', 0.9, 0.9);
   scaleObject('Greenhill', 1, 1);
    setProperty('Greenhill.alpha', 0);
    addLuaSprite('Greenhill', false);
  	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Bit Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bit Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets'); -- Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.045'); -- Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0500'); -- Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bit Note' then
        setProperty('Greenhill.alpha', 1); -- **after one Bit Note is hit, the alpha will always be 255 and so this function is redundant... but this is fine
         triggerEvent('Change Character', 0, 'PBF');
         triggerEvent('Change Character', 1, 'SonicPixel');
           end
end