function onCreate()

	makeLuaSprite('Exesky', 'Exesky', -800, -500);
	setScrollFactor('Exesky', 0.9, 0.9);
	
	makeLuaSprite('Execorpse', 'Execorpse', 350, 500);
	setScrollFactor('Execorpse', 0.9, 0.9);
	scaleObject('Execorpse', 0.9, 0.9);
		
	makeLuaSprite('ExeAnim', 'ExeAnim', -600, -200);
	setScrollFactor('ExeAnim', 0.9, 0.9);
	scaleObject('ExeAnim', 0.9, 0.9);

	
	 makeLuaSprite('Exetrees2', 'Exetrees2', -600, -100);
	setScrollFactor('Exetrees2', 0.9, 0.9);
	scaleObject('Exetrees2', 0.7, 0.7);


	makeLuaSprite('Exetrees', 'Exetrees', -900, -500);
	setScrollFactor('Exetrees', 0.9, 0.9);
	scaleObject('Exetrees', 1.1, 1.1);

	makeLuaSprite('Exeground', 'Exeground', -800, -200);
	setScrollFactor('Exeground', 0.9, 0.9);
	scaleObject('Exeground', 1.1, 1.1);


	addLuaSprite('Exesky', false);
	addLuaSprite('Exetrees', false);
      	addLuaSprite('Exetrees2', false);
      	addLuaSprite('Exeground', false);
	addLuaSprite('ExeAnim', false);
	addLuaSprite('Execorpse', false);

		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end