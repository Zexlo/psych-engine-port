	function onCreate()
	makeLuaSprite('bar1', 'bar', 0, -500)
	makeLuaSprite('bar2', 'bar', 0, 1000)	
	
	setObjectCamera('bar1', 'Hud');
	setObjectCamera('bar2', 'Hud');	

	scaleObject('bar1', 3, 1);
	scaleObject('bar2', 3, 1);	
	
	addLuaSprite('bar1', true);
	addLuaSprite('bar2', true);	
	end
		
	function onEvent(name,value1,value2)
	if name == 'cutscenebars' then
			
	if value1 == 'remove' or value1 == 'Remove' or value1 == 'remove ' then
	
	doTweenY('move3', 'bar1', -500, 0.2, 'linear')
	doTweenY('move4', 'bar2', 1000, 0.2, 'linear')
	setProperty('healthBarBG.visible', true)
	setProperty('healthBar.visible', true)
	setProperty('scoreTxt.visible', true)
	setProperty('timeTxt.visible', true)
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('timeBar.visible', true)
	setProperty('timeBarBG.visible', true)
	setProperty('song.visible', true)
else	
	doTweenY('move1', 'bar1', 0, 0.2, 'linear')
	doTweenY('move2', 'bar2', 600, 0.2, 'linear')
	setProperty('healthBarBG.visible', false)
	setProperty('healthBar.visible', false)
	setProperty('scoreTxt.visible', false)
	setProperty('timeTxt.visible', false)
	setProperty('iconP1.visible', false)
	setProperty('iconP2.visible', false)
	setProperty('timeBar.visible', false)
	setProperty('timeBarBG.visible', false)
	setProperty('song.visible', false)	
		end
	end
end		