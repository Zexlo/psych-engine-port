function onCreate()
if downscroll then
BGY = 675
nameY = 650
scoreY = 15
else
BGY = 18
nameY = -2
scoreY = 660
end
 setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port: ' ..songName);
	makeLuaSprite('nah', 'nocheating', 0, 0);
	addLuaSprite('nah', true);
	setObjectCamera('nah', 'other')
	setProperty('nah.alpha', 0)
	fullscreen = false
	makeLuaSprite('timeBG', 'timeBarBG', 400, BGY);
	addLuaSprite('timeBG', true);
	setObjectCamera('timeBG', 'HUD')	
end

function onCreatePost()

if timeBarType == 'Song Name' then
else
	makeLuaText('song', ' ' .. (songName), 1250, 0, nameY);
end	
    setTextSize('song', 25)
    addLuaText('song');
    setTextAlignment('song', 'center')	
	setObjectOrder('song', getObjectOrder('timeBar'))

    setTextFont('song', 'sonic.otf')
    setTextFont('timeTxt', 'sonic.otf')

	setProperty('song.antialiasing', false)
	setProperty('scoreTxt.antialiasing', false)
	setProperty('scoreTxt.y', scoreY)	
	setProperty('timeTxt.antialiasing', false)	
	
end


function onBeatHit()
if curBeat % 1 == 0 then
	doTweenAngle('wee', 'iconP1', -15, 0.7, 'linear')
	doTweenAngle('waa', 'iconP2', 15, 0.7, 'linear')
	end
	
if curBeat % 2 == 0 then
	doTweenAngle('wee', 'iconP1', 15, 0.7, 'linear')
	doTweenAngle('waa', 'iconP2', -15, 0.7, 'linear')
	end
	
end	


function onUpdatePost(elapsed)
if curBeat <= 0 then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true and downscroll then
for i = 0,7 do
	noteTweenY(i, i, 550, 0.001, 'SineInOut')
	end
	end	
	end
	
if week == 'Majin' then
setProperty('songLength', 60000000)
end

	
--UI SETTING	
    setProperty('iconP1.x', screenWidth - 430)
    setProperty('iconP2.x', 285)
	setProperty('song.visible',getProperty('timeTxt.visible'))	
	setProperty('song.alpha',getProperty('timeTxt.alpha'))	
	setProperty('timeBG.visible',getProperty('timeBar.visible'))	
	setProperty('timeBG.alpha',getProperty('timeBar.alpha'))	
	setTextString('scoreTxt','Performance: '..getProperty('ratingName') ..'\nSacrifices: '..getProperty('songMisses') ..' | Accuracy: '..(string.sub(getProperty('ratingPercent')* 100,0,5)).. '% ['..getProperty('ratingFC')..']')
	setTextFont('scoreTxt', 'sonic.otf')
    setTextSize('scoreTxt', 23)		
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
     if getProperty('health') > 0.4 then --prevent opponent from killing by just singing too long
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
		