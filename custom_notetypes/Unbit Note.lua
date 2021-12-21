function onCreate()
     
   	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Unbit Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Unbit Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Bitnote'); -- Change texture
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
	if noteType == 'Unbit Note' then
        setProperty('Greenhill.alpha', 0); -- **after one Unbit Note is hit, the alpha will always be 255 and so this function is redundant... but this is fine
         triggerEvent('Change Character', 0, 'bf');
         triggerEvent('Change Character', 1, 'P2Sonic');
           end
end