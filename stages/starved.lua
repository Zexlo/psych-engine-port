function onCreate()

	makeLuaSprite('city','starved/city', -80, -20);
	setScrollFactor('city', 0.9, 0.9);
	
	makeLuaSprite('redlight','starved/light', -350, 50);
	setScrollFactor('redlight', 0.9, 0.9);	
	
	makeLuaSprite('tower', 'starved/towers', -100, 40);
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