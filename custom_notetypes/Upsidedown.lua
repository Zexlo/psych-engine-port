function onCreate()
  	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Upsidedown
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Upsidedown' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'STATICNOTES_assets'); -- Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.085'); -- Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0200'); -- Default value is: 0.0475, health lost on miss
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
				noteSpinSpeed = 0.15;

			end
		end
	end
	--debugPrint('Script started!')
end

function  noteMiss(id, noteData, noteType, isSustainNote) 
	if noteType == 'Upsidedown' then
        for i=0, 7, 1 do -- for every note
            noteTweenAngle(i..'b', i, -180, 0.001, 'linear'); -- set to -180 to spin clockwise
            noteTweenX(i..'b', i, 600, 0.001, 'linear');
                 end
    end
end
