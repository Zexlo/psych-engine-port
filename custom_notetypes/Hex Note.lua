function onCreate()
	wires = 0
	for i = 1,6 do
	makeLuaSprite('wire'..i,'wires/'..i,0,0)
	addLuaSprite('wire'..i,true)
	setObjectCamera('wire'..i,'HUD')
	setProperty('wire'..i..'.alpha',0)
	end
					
	for i = 0, getProperty('unspawnNotes.length')-1 do

		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Hex Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'HEXNOTE_assets');
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.045');
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.0260'); 
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', true);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote) 
if noteType == 'Hex Note' then
if wires == 0 then	  
	runTimer('barb1',10)	
	doTweenAlpha('show1','wire1',1,0.5,linear)
	wires = 1
elseif wires == 1 then
	runTimer('barb2',10)	
	doTweenAlpha('show2','wire2',1,0.5,linear)
	wires = 2	
elseif wires == 2 then
	runTimer('barb3',10)	
	doTweenAlpha('show3','wire3',1,0.5,linear)
	wires = 3
elseif wires == 3 then
	runTimer('barb4',10)	
	doTweenAlpha('show4','wire4',1,0.5,linear)
	wires = 4
elseif wires == 4 then
	runTimer('barb5',10)	
	doTweenAlpha('show5','wire5',1,0.5,linear)
	wires = 5
elseif wires == 5 then
	runTimer('barb6',10)	
	doTweenAlpha('show6','wire6',1,0.5,linear)
	wires = 6
    	end
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'barb1' then
doTweenAlpha('hidew1','wire1',0,0.5,linear)
wires = wires - 1
elseif tag == 'barb2' then
	doTweenAlpha('hidew2','wire2',0,0.5,linear)
	wires = wires - 1	
elseif tag == 'barb3' then
	doTweenAlpha('hidew3','wire3',0,0.5,linear)
	wires = wires - 1	
elseif tag == 'barb4' then
	doTweenAlpha('hidew4','wire4',0,0.5,linear)
	wires = wires - 1
elseif tag == 'barb5' then
	doTweenAlpha('hidew5','wire5',0,0.5,linear)
	wires = wires - 1
elseif tag == 'barb6' then
	doTweenAlpha('hidew6','wire6',0,0.5,linear)	
	wires = wires - 1			
	end
end