function onCreate()

	makeLuaSprite('CWall', 'chaos/CWall', -2000, -4420);
	
	
	makeLuaSprite('CFloor', 'chaos/CFloor', -2000, 150);
	setScrollFactor('CFloor', 0.9, 0.9);
	
	makeLuaSprite('hole', 'chaos/The Chamber', -800, 100);		

	makeAnimatedLuaSprite('sonc', 'chaos/The Chamber', -775, 110);		
 	setProperty('sonc.alpha', 0)
  	setScrollFactor('sonc', 0.9, 0.9);
  
  	makeAnimatedLuaSprite('Charged', 'chaos/Ccharged', -870, -1800);	
   	addAnimationByPrefix('Charged', 'idle','Charged', 24, true);
	playAnim('charged', 'idle', false);
	setProperty('Charged.alpha', 0)	
	
	makeAnimatedLuaSprite('beam', 'chaos/Cbeam', -600, -1800);
    addAnimationByPrefix('beam', 'idle','Emerald Beam', 24, true);
	playAnim('emeralds', 'idle', false);

	makeAnimatedLuaSprite('emeralds', 'chaos/Emeralds', -300, -500);
    addAnimationByPrefix('emeralds', 'idle','TheEmeralds', 24, true);
	playAnim('emeralds', 'idle', true);
		
	makeAnimatedLuaSprite('thing', 'chaos/CBG1', -3200, -1650);
	setScrollFactor('thing', 0.9, 0.9);
	
	makeAnimatedLuaSprite('pebles', 'chaos/pebles', -1000, 650);
	addAnimationByPrefix('pebles', 'swap','pebles', 24, true);	
	setScrollFactor('pebles', 0.9, 0.9);

	addLuaSprite('CFloor', false);	
	addLuaSprite('CWall', false);
	addLuaSprite('thing', false);
	addLuaSprite('beam', false);
	addLuaSprite('Charged', false);	
	addLuaSprite('emeralds', false);
	addLuaSprite('hole', true);
 	addLuaSprite('sonc', true);	
	addLuaSprite('pebles', false);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end