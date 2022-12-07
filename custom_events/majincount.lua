function onCreate()

    makeLuaSprite('3', 'endless/three', 250, 80); -- X,Y pos   
    makeLuaSprite('2', 'endless/two', 250, 80); -- X,Y pos
	makeLuaSprite('1', 'endless/one', 250, 80); -- X,Y pos
    makeLuaSprite('go', 'endless/gofun', 250, 80); -- X,Y pos
	
	setObjectCamera('3', 'hud');
	setObjectCamera('2', 'hud');
	setObjectCamera('1', 'hud');
	setObjectCamera('go', 'hud');
	
	addLuaSprite('3', true);
	addLuaSprite('2', true);
	addLuaSprite('1', true);
	addLuaSprite('go', true);
	
	setProperty('3.alpha', 0);
	setProperty('2.alpha', 0);
	setProperty('1.alpha', 0);
	setProperty('go.alpha', 0);	
	end
	
function onEvent(name, value1, value2)

if name == 'majincount' then

doTweenAlpha('tree','3',1, 0.4,'linear')
end

function onTweenCompleted(tag)

if tag == 'tree' then
	setProperty('3.alpha', 0);
doTweenAlpha('twoo','2',1, 0.4,'linear')
end

if tag == 'twoo' then
	setProperty('2.alpha', 0);
doTweenAlpha('wone','1',1, 0.4,'linear')
end

if tag == 'wone' then
	setProperty('1.alpha', 0);
doTweenAlpha('goo','go',1, 0.4,'linear')
end

if tag == 'goo' then
	setProperty('go.alpha', 0);
end
end
end