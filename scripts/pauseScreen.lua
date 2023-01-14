fakePaused = false
cSelected = false
rSelected = false
eSelected = false

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
	makeLuaText('controltext', "CONTROLS\nTAB: Change skin (base bf ONLY)\nF12: Toggle fullscreen", 1280, 310, -800);
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
	makeAnimatedLuaSprite('pauseIcon', nil, -800, 140)
	loadGraphic('pauseIcon', 'icons/icon-bf', 150)
	addAnimation('pauseIcon', 'icon/icon-bf', {0, 1}, 0, true)
	setObjectCamera('pauseIcon', 'other')
	addLuaSprite('pauseIcon')
	setObjectOrder('pauseIcon', getObjectOrder('pauseLeft')+1)
	setProperty('pauseIcon.angle', 180)

if week == 'Tooslow' or week == 'Tooslowencore' then
makeLuaSprite('disk', 'covers/tooslow', -800, 260)

elseif week == 'YCR' then
makeLuaSprite('disk', 'covers/cantrun', -800, 260)

elseif week == 'Triple' then
makeLuaSprite('disk', 'covers/Triple Trouble', -800, 260)

elseif week == 'Majin' then
makeLuaSprite('disk', 'covers/endless', -800, 260)

elseif week == 'LordX' then
makeLuaSprite('disk', 'covers/lordX', -800, 260)

elseif week == 'Sunky' then
makeLuaSprite('disk', 'covers/milk', -800, 260)

elseif week == 'Sanic' then
makeLuaSprite('disk', 'covers/toofest', -800, 260)

elseif week == 'Fleetway' then
makeLuaSprite('disk', 'covers/chaos', -800, 260)

elseif week == 'TDoll' then
makeLuaSprite('disk', 'covers/Tdoll', -800, 260)

elseif week == 'Starved' or  week == 'Xterion' or week == 'curse' then
makeLuaSprite('disk', 'covers/blankrecord', -800, 260)

elseif week == 'Personel' then
makeLuaSprite('disk', 'covers/DONOTSTEEL', -800, 260)
	end
	scaleObject('disk', 0.28, 0.28); 	
	setObjectCamera('disk', 'other')
	addLuaSprite('disk')
	setObjectOrder('disk', getObjectOrder('pauseLeft')+1)
	setProperty('disk.angle', 180)


if getPropertyFromClass('ClientPrefs', 'middleScroll') == true and downscroll then
down = 550
moveY = 1000
fixY = 688
elseif downscroll then
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
if songName ~= 'Chaos' then
canPause = false		
close()
end
end

function onUpdatePost(elapsed)
	if keyJustPressed('accept') and fakePaused == false and not getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and canPause == true then
		playSound('pauseSounds/pause', 0.8, 'pause')
		playSound('pause',1,'song')		
		doTweenX('pauseRightTween', 'pauseRight', 600, 0.2, 'linear')
		doTweenX('fixtimebar', 'timeBar', 438, 0.2, 'linear')
		doTweenY('fixtimebar2', 'timeBar', fixY, 0.2, 'linear')
		doTweenX('pauseLeftTween', 'pauseLeft', 0, 0.2, 'linear')
		doTweenY('controlTween', 'controltext', 30, 0.4, 'linear')	
		doTweenX('TimerTween', 'Timer', 207, 0.2, 'linear')
		doTweenX('diskTween', 'disk', 65, 0.4, 'smoothStepIn')
		doTweenAngle('diskTweenAng', 'disk', 0, 1, 'circInOut')
		doTweenX('cTween', 'continue', 900, 0.2, 'linear')
		doTweenX('rTween', 'restart', 818, 0.2, 'linear')
		doTweenX('eTween', 'exit', 736, 0.2, 'linear')
		doTweenX('pauseIconTween', 'pauseIcon', 65, 0.4, 'circInOut')
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
	for i = 0,7 do	
	noteTweenY(i, i,moveY, 0.2, 'linear')
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
        doTweenAngle('rotate', 'disk', 0, 0.02, 'smoothStepIn')	
		doTweenY('cTweenY', 'continue', -15, 0.02, 'circInOut')
	end
	if rSelected == false then
		setProperty('restart.y', 0)
	end
	if rSelected == true then
	doTweenAngle('rotate1', 'disk', -360, 0.02, 'smoothStepIn')
		doTweenY('rTweenY', 'restart', -15, 0.02, 'circInOut')
	end
	if eSelected == false then
		setProperty('exit.y', 0)
	end
	if eSelected == true then
doTweenAngle('rotate2', 'disk', 360, 0.02, 'smoothStepIn')	
		doTweenY('eTweenY', 'exit', -15, 0.02, 'circInOut')
	end

	--hi im coffeedev
	
	if fakePaused == true then
	
		setProperty('blackbox.visible', true)
		setPropertyFromClass('Conductor', 'songPosition', getPropertyFromClass('Conductor', 'songPosition') - elapsed * 1000  ) 
		-- counted in milliseconds, 1000 = 1 second
		setPropertyFromClass('flixel.FlxG', 'sound.music.time', getPropertyFromClass('Conductor', 'songPosition'))
		setProperty('vocals.time', getPropertyFromClass('Conductor', 'songPosition'))
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 0)
		setProperty('vocals.volume', 0)
end
	if fakePaused == false and canPause then
		setProperty('blackbox.visible', false)
		setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
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
		if cSelected == true then
			cSelected = false
			rSelected = true
			playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')
		elseif rSelected == true then
			rSelected = false
			eSelected = true
			playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')
		elseif eSelected == true then
			eSelected = false
			cSelected = true
			playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')
		end
	elseif keyJustPressed('up') and fakePaused == true then
		if cSelected == true then
			cSelected = false
			eSelected = true
			playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')
		elseif rSelected == true then
			rSelected = false
			cSelected = true
			playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')
		elseif eSelected == true then
			eSelected = false
			rSelected = true
			playSound('pauseSounds/ScrollMenu', 0.3, 'pausescroll')
		end
	end
end
function plsHelp()
	if cSelected == true then
	playSound('pauseSounds/unpause', 1, 'unpause')
	setProperty('vocals.volume', 1)
	setPropertyFromClass('flixel.FlxG', 'sound.music.volume', 1)
	doTweenX('fixtimebar', 'timeBar', 438, 0.2, 'linear')
	doTweenY('fixtimebar2', 'timeBar', fixY, 0.2, 'linear')
	doTweenX('pauseRightTween2', 'pauseRight', 1500, 0.2, 'linear')
	doTweenX('pauseLeftTween2', 'pauseLeft', -800, 0.2, 'linear')
	doTweenY('controlTween', 'controltext', -800, 0.4, 'linear')	
	doTweenX('TimerTween2', 'Timer', -800, 0.2, 'linear')
	doTweenX('cTween2', 'continue', 1500, 0.2, 'linear')
	doTweenX('rTween', 'restart', 1500, 0.2, 'linear')
	doTweenX('eTween', 'exit', 1500, 0.2, 'linear')
	doTweenX('diskTween', 'disk', -800, 0.6, 'circInOut')
	doTweenAngle('diskTweenAng', 'disk', 180, 1, 'circInOut')
	doTweenX('pauseIconTween', 'pauseIcon', -800, 0.6, 'circInOut')
	doTweenAngle('pauseIconTweenAng', 'pauseIcon', 180, 0.6, 'circInOut')	
	runTimer('4c',0.2)
	noteTweenY('p1', 7,down, 0.2 , 'linear')
	noteTweenY('p2', 6,down, 0.4 , 'linear')
	noteTweenY('p3', 5,down, 0.6 , 'linear')
	noteTweenY('p4', 4,down, 0.8 , 'linear')
	noteTweenY('o1', 0,down, 0.2 , 'linear')
	noteTweenY('o2', 1,down, 0.4 , 'linear')
	noteTweenY('o3', 2,down, 0.6 , 'linear')
	noteTweenY('o4', 3,down, 0.8 , 'linear')	
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
	end
end
	
function onTweenCompleted(tag)		
if tag == 'fade' then
 setPropertyFromClass('lime.app.Application', 'current.window.title', 'FNF: Sonic EXE Psych port');
 exitSong(true)
	end
	end