function onEvent(name,value1,value2)
	if name == 'cutscenebars' then
	makeLuaSprite('bar1', 'bar', 0, 0)
	makeLuaSprite('bar2', 'bar', 0, 600)	
	
	setObjectCamera('bar1', 'Hud');
	setObjectCamera('bar2', 'Hud');	

	scaleObject('bar1', 3, 1);
	scaleObject('bar2', 3, 1);	
	
	addLuaSprite('bar1', true);
	addLuaSprite('bar2', true);			
	
if value1 == 'remove' then
removeLuaSprite('bar1', false)
removeLuaSprite('bar2', false)
end
end
end		