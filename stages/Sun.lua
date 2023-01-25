function onCreate()

	makeLuaSprite('Exesky', 'sun/Exesky', -800, -500);
	setScrollFactor('Exesky', 0.9, 0.9);
	
	makeLuaSprite('Execorpse', 'sun/Execorpse', 350, 520);
		
	makeLuaSprite('ExeAnim', 'sun/ExeAnim', -600, -200);

	
	 makeLuaSprite('Exetrees2', 'sun/Exetrees2', -600, -100);


	makeLuaSprite('Exetrees', 'sun/Exetrees', -900, -500);

	makeLuaSprite('Exeground', 'sun/Exeground', -800, -200);

       makeAnimatedLuaSprite('anim', 'sun/ExeAnim', -600, -200);
	addAnimationByPrefix('anim', 'idle', 'ExeBGAnim', 40, true);
	playAnim('anim', 'ExeBGAnim', false);


	addLuaSprite('Exesky', false);
	addLuaSprite('Exetrees', false);
      	addLuaSprite('Exetrees2', false);
      	addLuaSprite('Exeground', false);
	addLuaSprite('anim', false);
	addLuaSprite('Execorpse', false);

		
	close(true);
end