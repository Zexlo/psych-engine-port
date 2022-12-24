function onCreate()
 setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port: ' ..songName);
	makeLuaSprite('nah', 'nocheating', 0, 0);
	addLuaSprite('nah', true);
	setObjectCamera('nah', 'other')
	setProperty('nah.alpha', 0)
	fullscreen = false
end

function onCreatePost()
makeLuaText('check', 'nameon is false', 1250, 0, 0);
    setTextSize('check', 25)
    --addLuaText('check');
    setTextAlignment('check', 'right')	
if timeBarType == 'Song Name' then
nameon = true
--setTextString('check','nameon is true')
setPropertyFromClass('ClientPrefs', 'timeBarType', 'time Left')
end

    makeLuaText('song', ' ' .. (songName), 1250, 0, 0);
    setTextSize('song', 25)
    addLuaText('song');
    setTextAlignment('song', 'center')	
	setObjectOrder('song', getObjectOrder('timeBar'))
	setProperty('song.alpha',0)	
if songName ==	'Prey' then
    setTextFont('song', 'sonic.otf')
	setTextSize('song', 30)	
end	
	
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
--endless shit
if week == 'Majin' then
setProperty('songLength', 60000000)
end

	
--UI SETTING	
    setProperty('iconP1.x', screenWidth - 430)
    setProperty('iconP2.x', 285)
	setProperty('song.visible',getProperty('timeTxt.visible'))	
	setProperty('song.alpha',getProperty('timeTxt.alpha'))
	
--BOTPLAY SHIT	
if botPlay == true then
    setProperty('nah.alpha', 1)
	setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  )
	setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
	setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
	setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
	setProperty('vocals.volume', 0)
elseif botPlay == false then
removeLuaSprite('nah',false)
end

if botPlay == true and keyJustPressed('back') or botPlay == true and keyJustPressed('accept') then
exitSong(false)
end
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == false then
setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', true);	
		fullscreen = true		
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == true then
setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false);
		fullscreen = false
end
end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if songName == 'personel' and curBeat < 10 then
setProperty('health',2);
end
     if getProperty('health') > 0.2 then --prevent opponent from killing by just singing too long
          if not isSustainNote then
               setProperty('health', getProperty('health')-0.02); --amount to lose on normal notes
          else
               setProperty('health', getProperty('health')-0.01); --amount to lose on sustain part of notes
          end
     end

end

function noteMiss(id, noteData, noteType, isSustainNote)
playAnim('gf', 'sad', false, false, 0)
end

function onDestroy()
setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port');
if nameon == true then
setPropertyFromClass('ClientPrefs', 'timeBarType', 'Song Name')

end
end

function onGameOverStart()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == false then
setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', true);	
		fullscreen = true		
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == true then
setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false);
		fullscreen = false
		end
		end
		