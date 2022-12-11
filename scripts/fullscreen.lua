function onCreate()
    setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port');
	makeLuaSprite('nah', 'nocheating', 0, 0);
	addLuaSprite('nah', true);
	setObjectCamera('nah', 'other')
	setProperty('nah.alpha', 0)
fullscreen = false
end

function onCreatePost()

    makeLuaText('song', ' ' .. (songName), 1250, 0, 0);
    setTextSize('song', 25)
    addLuaText('song');
    setTextAlignment('song', 'center')	
	setObjectOrder('song', getObjectOrder('timeBar'))	
end

function onBeatHit()
if curBeat % 1 == 0 then
	doTweenAngle('wee', 'iconP1', -15, 1, 'linear')
	doTweenAngle('waa', 'iconP2', 15, 1, 'linear')
	end
	
if curBeat % 2 == 0 then
	doTweenAngle('wee', 'iconP1', 15, 1, 'linear')
	doTweenAngle('waa', 'iconP2', -15, 1, 'linear')
	end
	
end	

function onUpdatePost(elapsed)

if songName == 'Endless' or songName == 'Endless og' then
	setTextString('timeTxt', 'inf')
	end
    setProperty('iconP1.x', screenWidth - 430)
    setProperty('iconP2.x', 285)

if botPlay == true then
    setProperty('nah.alpha', 1)
	setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
	setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
	setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
	setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
	setProperty('vocals.volume', 0)
die()

elseif botPlay == false then

removeLuaSprite('nah',false)
end

	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == false then
setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', true);	
		fullscreen = true
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == true then
setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false);
		fullscreen = false
end
end

function die()
	--playSound('TitleLaugh', 1)	
	--exitSong(true)
end