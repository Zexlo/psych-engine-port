	docutscene = false
	function onCreate()
	makeLuaSprite('bar1', 'bar', 0, -500)
	makeLuaSprite('bar2', 'bar', 0, 1000)	
	
	setObjectCamera('bar1', 'Hud');
	setObjectCamera('bar2', 'Hud');	

	scaleObject('bar1', 3, 1);
	scaleObject('bar2', 3, 1);	
	
	addLuaSprite('bar1', true);
	addLuaSprite('bar2', true);
	setObjectOrder('bar1', getObjectOrder('timeBar')+6)
	setObjectOrder('bar2', getObjectOrder('timeBar')+6)	
	end
		
	function onEvent(name,value1,value2)
	if name == 'cutscenebars' then
			
	if value1 == 'remove' or value1 == 'Remove' or value1 == 'remove ' then
	
	doTweenY('move3', 'bar1', -500, 0.2, 'linear')
	doTweenY('move4', 'bar2', 1000, 0.2, 'linear')

	if middlescroll then
	for i = 0,3 do	
	noteTweenAlpha(i, i, 0.5, 0.001, 'SineInOut')
	end	
	else
		for i = 0,3 do	
		noteTweenAlpha(i, i, 1, 0.001, 'SineInOut')
	end
	end	
	for i = 4,7 do
	noteTweenAlpha(i, i, 1, 0.001, 'SineInOut')
	end

	setProperty('healthBarBG.visible', true)
	setProperty('healthBar.visible', true)
	setProperty('scoreTxt.visible', true)
	setProperty('timeTxt.visible', true)
	setProperty('iconP1.visible', true)
	setProperty('iconP2.visible', true)
	setProperty('timeBar.visible', true)
	setProperty('timeBarBG.visible', true)
	setProperty('song.visible', true)
	docutscene = false
else
for i = 0,9 do
	noteTweenAlpha(i, i, 0, 0.001, 'SineInOut')
end	
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
	docutscene = true
		end
	end
end		