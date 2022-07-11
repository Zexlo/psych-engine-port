function onCreate()

makeLuaSprite('sky', 'prey/stardustBg', -200, 0);
	setScrollFactor('sky', 0.9, 0.9);
	scaleObject('sky', 1.1, 1.1);

	makeLuaSprite('floor', 'prey/stardustFloor', -100, -1700);
	setScrollFactor('floor', 0.9, 1);
	scaleObject('floor', 1.1, 1.1);
	
	addLuaSprite('sky', false);
	addLuaSprite('floor', true);
	
	close(true); 
end