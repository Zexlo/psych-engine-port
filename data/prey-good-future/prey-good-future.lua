local width = 0
endscroll = false
local weee = "prey/stardustFloor" -- replace limoSunset with the name of your sprite

function onCreate()
	makeLuaSprite("floor1", weee, -100, -400)
	width = getProperty("floor1.width")
	
	makeLuaSprite("floor2", weee, width-120, -400)
	
	addLuaSprite("floor1", true)
	addLuaSprite("floor2", true)
	setProperty('floor1.alpha', 0)
    setProperty('floor2.alpha', 0)

	doTweenX("floor1Tween", "floor1", -width, 0.8, "linear")
	doTweenX("floor2Tween", "floor2", -20, 0.8, "linear")
runTimer('lol', 12.8)	
end

function onTweenCompleted(tag)
	if tag == "floor1Tween" and endscroll == false then
		setProperty("floor1.x", 0)
		setProperty("floor2.x", width-20)
		
	if boyfriendName == 'bf-Sonic-Peelout' then	
		doTweenX("floor1Tween", "floor1", -width, 0.6, "linear")
		doTweenX("floor2Tween", "floor2", -20, 0.6, "linear")
		else
		doTweenX("floor1Tween", "floor1", -width, 2, "linear")
		doTweenX("floor2Tween", "floor2", -20, 2, "linear")
	end
end
end

function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'lol' then
setProperty('floor1.alpha', 1)
setProperty('floor2.alpha', 1)
runTimer('start', 9)	
end
end
