local volume
local stop = false
local allowCountdown = false
local angle = 275
local spin = 1

function onCreate()
	setProperty('gf.visible', false)
	setProperty('boyfriend.visible', false)
	setProperty('dad.visible', false)
	setProperty('healthBar.alpha', 0)
	setProperty('healthBar.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('scoreTxt.alpha', 0)
	setProperty('iconP2.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('void.visible', false)
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == '1' then
playSound('Coldsteel/mymother',0.4)
end
end

function onUpdate(elapsed)
doTweenColor('ColorTween', 'timeBar', 'FF00FF', 1, 'linear')

	if curBeat == 1 then
		setPropertyFromClass("openfl.Lib", "application.window.title", "psssh...nothin personnel...kid...")
	end

if curBeat == 308 then
         runTimer('1', 2, 1)
end	
	
	if curBeat >= 300 and curBeat <= 315 then
		-- oppt notespin
		noteTweenAngle('E', 0, angle, 0.001, linear);
		noteTweenAngle('F', 1, angle, 0.001, linear);
		noteTweenAngle('G', 2, angle, 0.001, linear);
		noteTweenAngle('H', 3, angle, 0.001, linear);

		-- bf notespin      
		noteTweenAngle('A', 4, angle, 0.001, linear);
		noteTweenAngle('B', 5, angle, 0.001, linear);
		noteTweenAngle('C', 6, angle, 0.001, linear);
		noteTweenAngle('D', 7, angle, 0.001, linear);
		spin = spin + 0.007
		angle = angle + spin
	end
	if curStep >= 1311 and curStep < 1404 then
		-- oppt notespin
		noteTweenAngle('E', 0, angle, 0.001, linear);
		noteTweenAngle('F', 1, angle, 0.001, linear);
		noteTweenAngle('G', 2, angle, 0.001, linear);
		noteTweenAngle('H', 3, angle, 0.001, linear);
	
		-- bf notespin
		noteTweenAngle('A', 4, angle, 0.001, linear);
		noteTweenAngle('B', 5, angle, 0.001, linear);
		noteTweenAngle('C', 6, angle, 0.001, linear);
		noteTweenAngle('D', 7, angle, 0.001, linear);
		
		--other spin
		doTweenAngle('bf-flip', 'boyfriend', angle, 0.001, 'linear')
		doTweenAngle('cs-flip', 'dad', angle, 0.001, 'linear')
		spin = spin + 0.0085
		angle = angle + spin
	end
	if curStep == 1404 then
		doTweenAngle('bf-flip', 'boyfriend', 0, 0.001, 'linear')
		doTweenAngle('cs-flip', 'dad', 0, 0.001, 'linear')
		
		-- oppt notespin
		noteTweenAngle('E', 0, 0, 0.5, linear);		
		noteTweenAngle('F', 1, 0, 0.5, linear);		
		noteTweenAngle('G', 2, 0, 0.5, linear);		
		noteTweenAngle('H', 3, 0, 0.5, linear);		
			
		-- bf notespin		
		noteTweenAngle('A', 4, 0, 0.5, linear);		
		noteTweenAngle('B', 5, 0, 0.5, linear);		
		noteTweenAngle('C', 6, 0, 0.5, linear);		
		noteTweenAngle('D', 7, 0, 0.5, linear);
	end
	
		end

function onBeatHit()
	if curBeat == 8 then
		setProperty('scoreTxt.alpha', 1)
		setProperty('boyfriend.visible', true)
		setProperty('dad.visible', true)
		setProperty('healthBar.alpha', 1)
		setProperty('healthBar.visible', true)
		setProperty('scoreTxt.visible', true)
		setProperty('scoreTxt.alpha', 1)
		setProperty('iconP2.visible', true)
		setProperty('iconP1.visible', true)
		setProperty('void.visible', true)
	end
	if curBeat == 72 then
		doTweenZoom('zoom', 'camGame', 1.2, 0.3, 'linear')
		setProperty('defaultCamZoom', 1.2);
	end
	if curBeat == 104 then
		doTweenZoom('zoom', 'camGame', 1.4, 0.3, 'linear')
		setProperty('defaultCamZoom', 1.5);
	end
	if curBeat == 136 then
		doTweenZoom('zoom', 'camGame', 1, 0.3, 'linear')
		setProperty('defaultCamZoom', 1);
	end
	if curBeat == 200 then
		doTweenZoom('zoom', 'camGame', 0.9, 0.3, 'linear')
		setProperty('defaultCamZoom', 0.9);
	end
	if curBeat == 300 then
		doTweenZoom('zoom', 'camGame', 1.5, 0.3, 'linear')
		setProperty('defaultCamZoom', 1.5);
	end
	if curBeat == 356 then
		doTweenZoom('zoom', 'camGame', 0.9, 20, 'linear')
		setProperty('defaultCamZoom', 0.9);
	end
	if curBeat % 2 == 0 then
		if curBeat >= 424 and curBeat < 468 then
				doTweenZoom("camGame", "camGame", getProperty("camGame.zoom") + 0.1,0.01)
				doTweenZoom("camHUD", "camHUD", getProperty("camHUD.zoom") + 0.1,0.01)
		end
		if curBeat >= 472 and curBeat < 484 then
				doTweenZoom("camGame", "camGame", getProperty("camGame.zoom") + 0.1,0.01)
				doTweenZoom("camHUD", "camHUD", getProperty("camHUD.zoom") + 0.1,0.01)
		end
	end
	if curBeat % 1 == 0 then
		if curBeat >= 468 and curBeat < 472 then
				doTweenZoom("camGame", "camGame", getProperty("camGame.zoom") + 0.1,0.01)
				doTweenZoom("camHUD", "camHUD", getProperty("camHUD.zoom") + 0.1,0.01)
		end
		if curBeat >= 484 and curBeat < 494 then
				doTweenZoom("camGame", "camGame", getProperty("camGame.zoom") + 0.1,0.01)
				doTweenZoom("camHUD", "camHUD", getProperty("camHUD.zoom") + 0.1,0.01)
		end
	end
	if curBeat == 508 then
		setPropertyFromClass("openfl.Lib", "application.window.title", "FNF: Sonic EXE Psych Port")
	end
end
