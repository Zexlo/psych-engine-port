function onCreate()
	makeLuaSprite('red', 'red', -150, 0);
	makeLuaSprite('yo', 'black', -150, 0);
	setScrollFactor('yo', 0.9, 1);
	setScrollFactor('red', 0.9, 1);
	scaleObject('red', 2, 3);
	scaleObject('yo', 2, 3);
	addLuaSprite('yo', true)
	addLuaSprite('red', true)
	setProperty('red.alpha', 0)
	setProperty('yo.alpha', 0)
	setObjectCamera('red', 'HUD');
	setObjectCamera('yo', 'HUD');	
	setObjectOrder('yo', getObjectOrder('red')-2)	
end

function onEvent(name,value1,value2)
	if name == 'redpop' then
	setProperty('yo.alpha', 1)	
 doTweenAlpha('fadein','red', 1, 0.8, 'linear'); 
	end
	end
	
function onTweenCompleted(tag)
	if tag == "fadein" then
doTweenAlpha('fadeout','red', 0, 0.8, 'linear');
end
end
 
 