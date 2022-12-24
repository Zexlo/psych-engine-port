function onCreate()

	makeLuaSprite('3', 'endless/three', 0, 0);
	screenCenter('3','XY')
	makeLuaSprite('2', 'endless/two', 0, 0);
	screenCenter('2','XY')	
	makeLuaSprite('1', 'endless/one', 0, 0);
	screenCenter('1','XY')	
	makeLuaSprite('go', 'endless/gofun', 0, 0);
	screenCenter('go','XY')

	setObjectCamera('3', 'hud');
	setObjectCamera('2', 'hud');
	setObjectCamera('1', 'hud');
	setObjectCamera('go', 'hud');	
	
end

function onUpdate(elasped)

	if curStep == 888 then
addLuaSprite('3',true)	
end

	if curStep == 892 then
removeLuaSprite('3',true)		
addLuaSprite('2',true)	
end

	if curStep == 895 then
removeLuaSprite('2',true)		
addLuaSprite('1',true)	
end

	if curStep == 900 then
removeLuaSprite('1',true)		
addLuaSprite('go',true)	
end
	if curStep >= 905 then
removeLuaSprite('go',true)		
end
end

-- function noteMiss(id, noteData, noteType, isSustainNote)
-- if misses >= 10 then
-- setProperty('health',0)
-- end
-- end