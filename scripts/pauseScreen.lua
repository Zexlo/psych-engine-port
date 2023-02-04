local fakePaused, eSelected, rSelected, cSelected = false, false, false, false
local down, moveY, fixY

canPause = false

function onGameOver()
canPause = false


end


function onPause()
	return Function_Stop;
end


function onCreate()
--close()

	makeLuaSprite('3p', 'endless/three', 0, 0);
	screenCenter('3p','XY')
	makeLuaSprite('2p', 'endless/two', 0, 0);
	screenCenter('2p','XY')	
	makeLuaSprite('1p', 'endless/one', 0, 0);
	screenCenter('1p','XY')	
	makeLuaSprite('gop', 'endless/gofun', 0, 0);
	screenCenter('gop','XY')	

	setObjectCamera('3p', 'other');
	setObjectCamera('2p', 'other');
	setObjectCamera('1p', 'other');
	setObjectCamera('gop', 'other');

	luaDebugMode = true
	makeLuaSprite('blackbox', 'blackBG', 0, 0)
	setObjectCamera('blackbox', 'other')
	setProperty('blackbox.alpha', 0)
	initLuaShader('grayscale')
	initLuaShader('noshader')	
	setProperty('blackbox.visible', false)
	makeLuaSprite('pauseRight', 'pauseScreen/pauseRight', 1500, 30)
	setObjectCamera('pauseRight', 'camOther')
	makeLuaSprite('pauseLeft', 'pauseScreen/pauseLeft', -800, 0)
	setObjectCamera('pauseLeft', 'camOther')
	makeLuaSprite('Timer', '', -8007, 203)
	makeGraphic('Timer', 390, 11, 'FF0000')
	setObjectCamera('Timer', 'camOther')
	makeLuaSprite('continue', 'pauseScreen/Continue', 1500, 0)
	setObjectCamera('continue', 'camOther')
	makeLuaSprite('restart', 'pauseScreen/Restart', 1500, 0)
	setObjectCamera('restart', 'camOther')
	makeLuaSprite('exit', 'pauseScreen/Exit', 1500, 0)
	setObjectCamera('exit', 'camOther')
	makeLuaSprite('fadeBG', 'simplejump', 0, 0)
	scaleObject('fadeBG', 0.7, 0.7); 
	setProperty('fadeBG.alpha', 0)
	makeLuaText('controltext', "CONTROLS\nSPACE: dodge\nTAB: Change skin (base bf ONLY)\nF12: Toggle fullscreen", 1280, 310, -800);
    setTextSize('controltext', 30);
	setObjectCamera('controltext', 'other');	
    setTextFont('controltext', 'sonic.otf')
	
	addLuaSprite('blackbox', true)
	addLuaSprite('pauseRight', true)
	addLuaSprite('pauseLeft', true)
	addLuaSprite('Timer', true)
	addLuaSprite('continue', true)
	addLuaSprite('restart', true)
	addLuaSprite('exit', true)
	addLuaSprite('fadeBG', true)

	setObjectOrder('controltext', getObjectOrder('blackbox')+1)	
end
function onCreatePost()

	local Dscroll = downscroll
	local Mscroll = middlescroll	
	
	makeAnimatedLuaSprite('pauseIcon', nil, -800, 140)
	loadGraphic('pauseIcon', 'icons/icon-bf', 150)
	addAnimation('pauseIcon', 'icon/icon-bf', {0, 1}, 0, true)
	setObjectCamera('pauseIcon', 'other')
	addLuaSprite('pauseIcon')
	setObjectOrder('pauseIcon', getObjectOrder('pauseLeft')+1)
	setProperty('pauseIcon.angle', 180)

	if week == 'Starved' or  week == 'Xterion' or week == 'Curse' or week == 'Faker' then
	makeLuaSprite('disk', 'covers/blank', -800, 260)

	elseif week == 'Sonic.exe' then
	makeLuaSprite('disk', 'covers/'..songName, -800, 260)
	else

	makeLuaSprite('disk', 'covers/'..week, -800, 260)	
	end	

	scaleObject('disk', 0.55, 0.55); 	
	setObjectCamera('disk', 'other')
	addLuaSprite('disk')
	setObjectOrder('disk', getObjectOrder('pauseLeft')+1)
	setProperty('disk.angle', 180)


if Mscroll and Dscroll then
down = 550
moveY = 1000
fixY = 688
elseif Dscroll then
down = 570
moveY = 1000
fixY = 688
else
down = 50
moveY = -200
fixY = 31
end

end	

function onSongStart()
if songName ~= 'Chaos' then
canPause = true
else
canPause = false
end
end

function onEndSong()
canPause = false		
close()
end

function onUpdatePost(elapsed)
	if keyJustPressed('accept') and fakePaused == false and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause == true then
		playSound('pauseSounds/pause', 0.8, 'pause')
		playSound('pause',1,'song')
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
		setProperty('timeBar.visible',false)				
		doTweenX('pauseRightTween', 'pauseRight', 600, 0.2, 'cubeOut')
		doTweenX('fixtimebar', 'timeBar', 438, 0.2, 'smoothStepIn')
		doTweenY('fixtimebar2', 'timeBar', fixY, 0.2, 'smoothStepIn')
		doTweenX('pauseLeftTween', 'pauseLeft', 0, 0.2, 'cubeOut')
		doTweenY('controlTween', 'controltext', 30, 0.4, 'expoOut')	
		doTweenX('TimerTween', 'Timer', 207, 0.2, 'cubeOut')
		doTweenX('diskTween', 'disk', 65, 0.4, 'smoothStepIn')
		doTweenAngle('diskTweenAng', 'disk', 0, 1, 'circInOut')
		doTweenX('cTween', 'continue', 900, 0.2, 'elasticOut')
		doTweenX('rTween', 'restart', 818, 0.4, 'elasticOut')
		doTweenX('eTween', 'exit', 736, 0.6, 'elasticOut')
		doTweenX('pauseIconTween', 'pauseIcon', 65, 0.4, 'cubeOut')
		doTweenAngle('pauseIconTweenAng', 'pauseIcon', 0, 0.4, 'circInOut')	
		setSpriteShader('blackbox','grayscale')
	    addHaxeLibrary("ShaderFilter", "openfl.filters")
		runHaxeCode([[
		game.camGame.setFilters([new ShaderFilter(game.getLuaObject("blackbox").shader)]);
		]]) 
		cSelected = true
		rSelected = false
		eSelected = false
		fakePaused = true
	for i = 0,9 do	
	noteTweenY(i, i,moveY, 0.2, 'elasticIn')
end		
	elseif keyJustPressed('accept') and fakePaused == true and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause then
		plsHelp()
	end
	
	if curBeat >= 20 and songName == 'Chaos' then
	canPause = true
	 -- setProperty('playbackRate',1.2)
	end

-- if getGlobalFromScript('custom_events/cutscenebars','docutscene','true') then
-- canPause = false
-- elseif getGlobalFromScript('custom_events/cutscenebars','docutscene','false') then
-- canPause = true
-- end
	
	if cSelected == false then
		setProperty('continue.y', 0)
	end
	if cSelected == true then
		doTweenY('cTweenY', 'continue', -15, 0.02, 'circInOut')
	end
	if rSelected == false then
		setProperty('restart.y', 0)
	end
	if rSelected == true then
		doTweenY('rTweenY', 'restart', -15, 0.02, 'circInOut')
	end
	if eSelected == false then
		setProperty('exit.y', 0)
	end
	if eSelected == true then
		doTweenY('eTweenY', 'exit', -15, 0.02, 'circInOut')
	end

	--hi im coffeedev
	
	if fakePaused == true then
	
		setProperty('blackbox.visible', true)
		setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  ) 
		-- counted in milliseconds, 1000 = 1 second
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
end
	if fakePaused == false and canPause then
		setProperty('blackbox.visible', false)
		setSpriteShader('blackbox','noshader')
		runHaxeCode([[
		game.camGame.setFilters([new ShaderFilter(game.getLuaObject("blackbox").shader)]);
		]]) 
	stopSound('song')
	stopSound('song1')		
	end
	scaleObject('Timer', 1 * getProperty("songPercent"), 1)
	damnIWannaDie()
end
	
function onSoundFinished(tag)
if tag == 'song' then
playSound('pause',1,'song1')
end
if tag == 'song1' then
playSound('pause',1,'song')
end
end

function damnIWannaDie()	
	if keyJustPressed('down') and fakePaused == true then
		doTweenAngle('rotate', 'disk', getProperty('disk.angle')+480, 0.2, 'circOut')		
		playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')		
		if cSelected == true then
			cSelected = false
			rSelected = true
		elseif rSelected == true then
			rSelected = false
			eSelected = true
		elseif eSelected == true then
			eSelected = false
			cSelected = true
		end
	elseif keyJustPressed('up') and fakePaused == true then
		doTweenAngle('rotate', 'disk', getProperty('disk.angle')+480, 0.2, 'smoothStepIn')		
		playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')	
		if cSelected == true then
			cSelected = false
			eSelected = true
		elseif rSelected == true then
			rSelected = false
			cSelected = true
		elseif eSelected == true then
			eSelected = false
			rSelected = true
		end
	end
end
function plsHelp()
	if cSelected == true then
		setProperty('timeBar.visible',true)	
	playSound('pauseSounds/unpause', 1, 'unpause')
	doTweenX('fixtimebar', 'timeBar', 438, 0.2, 'linear')
	doTweenY('fixtimebar2', 'timeBar', fixY, 0.2, 'linear')
	doTweenX('pauseRightTween2', 'pauseRight', 1500, 0.2, 'cubeOut')
	doTweenX('pauseLeftTween2', 'pauseLeft', -800, 0.2, 'linear')
	doTweenY('controlTween', 'controltext', -800, 0.4, 'expoOut')	
	doTweenX('TimerTween2', 'Timer', -800, 0.2, 'linear')
	doTweenX('cTween2', 'continue', 1500, 0.4, 'elasticOut')
	doTweenX('rTween', 'restart', 1500, 0.4, 'elasticOut')
	doTweenX('eTween', 'exit', 1500, 0.4, 'elasticOut')
	doTweenX('diskTween', 'disk', -800, 0.6, 'circInOut')
	doTweenAngle('diskTweenAng', 'disk', 180, 1, 'circInOut')
	doTweenX('pauseIconTween', 'pauseIcon', -800, 0.6, 'circInOut')
	doTweenAngle('pauseIconTweenAng', 'pauseIcon', 180, 0.6, 'circInOut')	
	runTimer('4c',0.2)
	for i = 0,9 do
		noteTweenY('p'..i, i,down, 0.4 +i/10 , 'elasticOut')
		end			
	cSelected = false
	rSelected = false
	eSelected = false
	elseif rSelected == true then
	restartSong(false);
	elseif eSelected == true then
	setObjectCamera('fadeBG', 'camOther')
	playSound('pauseSounds/exit', 1, 'exit')
	doTweenAlpha('fade', 'fadeBG', 1, 1.2, 'linear')
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == '4c' then
	addLuaSprite('3p',true)	
	runTimer('countdown',0.3,4)
	end

if tag == 'countdown' and loopsLeft == 3 then
removeLuaSprite('3p',false)		
addLuaSprite('2p',true)
end

if tag == 'countdown' and loopsLeft == 2 then
removeLuaSprite('2p',false)		
addLuaSprite('1p',true)
end

if tag == 'countdown'and loopsLeft == 1 then
removeLuaSprite('1p',false)	
	fakePaused = false
	setProperty('vocals.volume', 1)
	setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)	
	end
end
	
function onTweenCompleted(tag)		
if tag == 'fade' then
 setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port');
 exitSong(true)
	end
	end