	
	function onCreate()
		if not middlescroll and songName == 'Fight or Flight' then
			setPropertyFromClass('ClientPrefs', 'middlescroll', true)
			nomid = true
		end		
	if middlescroll and downscroll then
	BGY = 675		
	nameY = 650	
	elseif downscroll then
	BGY = 675
	nameY = 650
	scoreY = 15
	else
	BGY = 18
	nameY = -2
	scoreY = 660
	end

 	setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port');
	fullscreen = false
	makeLuaSprite('timeBG', 'timeBarBG', 400, BGY);
	addLuaSprite('timeBG', true);
	setObjectCamera('timeBG', 'HUD')

	makeLuaText('variables','song:'..songName..'\ndifficulty: '..difficultyName..'\nCurbeat:'..curBeat, 1280, 1050, 20);
    setTextSize('variables', 20);
    setTextAlignment('variables', 'left');
    setObjectCamera('variables', 'other');
end

function onCreatePost()
	if middlescroll and downscroll then
		for i = 0,9 do
			noteTweenY(i, i, 545, 0.001, 'SineInOut')
			end
			end	

if timeBarType == 'Song Name' then
else
	makeLuaText('song', ' ' .. (songName), 1250, 0, nameY);
end	
		
    setTextSize('song', 25)
    addLuaText('song');

    setTextFont('song', 'sonic.otf')
    setTextFont('timeTxt', 'sonic.otf')	
	setTextFont('scoreTxt', 'sonic.otf')
    setTextSize('scoreTxt', 23)
	
    setTextAlignment('song', 'center')
	setObjectOrder('song', getObjectOrder('timeBar'))
	setProperty('scoreTxt.y', scoreY)
end


function onCountdownTick()

	if week == 'Majin' then
		setProperty('songLength', 60000000)
		end

	if botPlay == true then
		makeLuaSprite('nah', 'nocheating', 0, 0);
		addLuaSprite('nah', true);
		setObjectCamera('nah', 'other')
		setProperty('nah.alpha', 0)		
		setProperty('nah.alpha', 1)	
	return Function_Stop; --prevents song end
end
end

function onBeatHit()
if curBeat % 1 == 0 then
	doTweenAngle('wee', 'iconP1', -15, 0.8, 'backInOut')
	doTweenAngle('waa', 'iconP2', 15, 0.8, 'backInOut')
	end
	
if curBeat % 2 == 0 then
	doTweenAngle('wee', 'iconP1', 15, 0.8, 'backInOut')
	doTweenAngle('waa', 'iconP2', -15, 0.8, 'backInOut')
	end
	
end	


function onUpdatePost(elapsed)
	setProperty('iconP1.x', screenWidth - 430)
	setProperty('iconP2.x', 285)				
			--UI SETTING
	
		setProperty('song.visible',getProperty('timeBar.visible'))	
		setProperty('song.alpha',getProperty('timeBar.alpha'))
		setProperty('timeBarBG.visible',getProperty('timeBar.visible'))	
		setProperty('timeBarBG.alpha',getProperty('timeBar.alpha'))	
		setProperty('timeBG.visible',getProperty('timeBar.visible'))	
		setProperty('timeBG.alpha',getProperty('timeBar.alpha'))
	if songName ~= 'Prey' then	
		setProperty('timeTxt.visible',getProperty('timeBar.visible'))	
		setProperty('timeTxt.alpha',getProperty('timeBar.alpha'))	
	end
	--BOTPLAY SHIT	

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

	
	--if getTextString('timeTxt') == '- '..songName..' ['..songdif..']'..' -' then
	--end	
--[[ 	if keyPressed('five') and luaDebugMode == false then
        luaDebugMode = true
		addLuaText('variables');	
    elseif keyPressed('five') and luaDebugMode == true then
		luaDebugMode = false
		removeLuaText('variables',false);		 
    end  ]]
	end

	function onUpdateScore(miss)
		setTextString('scoreTxt','Performance: '..getProperty('ratingName') ..'\nSacrifices: '..getProperty('songMisses') ..' | Accuracy: '..(string.sub(getProperty('ratingPercent')* 100,0,5)).. '% ['..getProperty('ratingFC')..']')
	setTextString('variables','song:'..songName..'\ndifficulty: '..difficultyName..'\nCurbeat:'..curBeat..'\nCurStep:'..curStep..'\n'..defaultPlayerStrumX0..'\n'..defaultPlayerStrumX1..'\n'..defaultPlayerStrumX2..'\n'..defaultPlayerStrumX3)
	end

function opponentNoteHit(id, direction, noteType, isSustainNote)
if songName == 'personel' and curBeat < 10 then
setProperty('health',2);
end

if songName ~= 'Black Sun' or songName ~= 'Triple Trouble' then
     if getProperty('health') > 0.4 then --prevent opponent from killing by just singing too long
          if not isSustainNote then
               setProperty('health', getProperty('health')-0.016); --amount to lose on normal notes
          else
               setProperty('health', getProperty('health')-0.008); --amount to lose on sustain part of notes
          end
     end
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
playAnim('gf', 'sad', false, false, 0)
end

function onDestroy()
--[[ 	if nameon == true then
	setPropertyFromClass('ClientPrefs', 'timeBarType', 'Song Name') ]]
	
	if nomid == true then
	setPropertyFromClass('ClientPrefs', 'middlescroll', false)	
	end
end	

	function onGameOverStart()
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == false then
	setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', true);	
	fullscreen = true		
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F12') and fullscreen == true then
	setPropertyFromClass('openfl.Lib', 'application.window.fullscreen', false);
	fullscreen = false
	close()
	end
end