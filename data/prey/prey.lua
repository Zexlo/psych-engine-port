local width = 0
local weee = "prey/stardustFloor" -- replace limoSunset with the name of your sprite

function onCreate()
	makeLuaSprite("floor1", weee, -100, -1500)
	width = getProperty("floor1.width")
	
	makeLuaSprite("floor2", weee, width-120, -1500)
	
	addLuaSprite("floor1", true)
	addLuaSprite("floor2", true)
	setProperty('floor1.alpha', 0)
       setProperty('floor2.alpha', 0)

	doTweenX("floor1Tween", "floor1", -width, 3, "linear")
	doTweenX("floor2Tween", "floor2", -20, 3, "linear")
runTimer('lol', 12.8)	
end

function onTweenCompleted(tag)
	if tag == "floor1Tween" then
		setProperty("floor1.x", 0)
		setProperty("floor2.x", width-20)
		
		doTweenX("floor1Tween", "floor1", -width, 3, "linear")
		doTweenX("floor2Tween", "floor2", -20, 3, "linear")
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
if tag == 'lol' then
setProperty('floor1.alpha', 1)
setProperty('floor2.alpha', 1)
runTimer('start', 9)	
end
end