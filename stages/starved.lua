function onCreate()

	makeLuaSprite('city','starved/city', 500, 50);
	setScrollFactor('city', 0.9, 0.9);
	
	makeLuaSprite('redlight','starved/light', -350, 50);
	setScrollFactor('redlight', 0.9, 0.9);	
	
	makeLuaSprite('tower', 'starved/towers', 600, 60);
	setScrollFactor('tower', 0.9, 0.9);
	scaleObject('tower', 1.1, 1.1);

	makeLuaSprite('room', 'starved/stage', -400, 50);
	setScrollFactor('room', 0.9, 1);
	scaleObject('room', 1.3, 1.5);

       makeLuaSprite('sonicdead','starved/sonic', 80, 380);
       setScrollFactor('sonicdead', 1, 1);
     scaleObject('sonicdead', 0.7, 0.7);

	addLuaSprite('city', false);
	addLuaSprite('tower', false);
	addLuaSprite('room', false);
	addLuaSprite('sonicdead', false);
	addLuaSprite('redlight', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
