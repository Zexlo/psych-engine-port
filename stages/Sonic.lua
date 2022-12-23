function onCreate()

	makeLuaSprite('SKY', 'tooslow/BGSky', -720, -200);
	setScrollFactor('SKY', 0.9, 0.9);
	scaleObject('SKY', 1.4, 1.4);

	
	makeLuaSprite('fronttrees', 'tooslow/TreesFG', -660, -220);
	--setScrollFactor('fronttrees', 0.9, 0.9);
	scaleObject('fronttrees', 1.4, 1.2);
		
       makeLuaSprite('EGGMAN', 'tooslow/DeadEgg', -140, 680);
	--setScrollFactor('EGGMAN', 0.9, 0.9);
	
	makeLuaSprite('KNUCKLE', 'tooslow/DeadKnux', 1200, 700);
	--setScrollFactor('KNUCKLE', 0.9, 0.9);

	
	 makeLuaSprite('TAIL', 'tooslow/TAIL', -360, 670);
	--setScrollFactor('TAIL', 0.9, 0.9);


	makeLuaSprite('BGtrees', 'tooslow/TreesMidBack', -400, -200);
	--setScrollFactor('BGtrees', 0.9, 0.9);
	scaleObject('BGtrees', 1.1, 1.1);

	makeLuaSprite('midtrees1', 'tooslow/TreesMid', -50, 0);
	--setScrollFactor('BGtrees', 0.9, 0.9);
	scaleObject('BGtrees', 1.1, 1.1);

	makeLuaSprite('midtrees2', 'tooslow/TreesOuterMid1', -50, -100);
	--setScrollFactor('BGtrees', 0.9, 0.9);	

	makeLuaSprite('midtrees3', 'tooslow/TreesOuterMid2', -300, -40);

	makeLuaSprite('treesL', 'tooslow/TreesLeft', -520, 0);
	makeLuaSprite('treesR', 'tooslow/TreesRight', 1000, -80);	
    scaleObject('treesR', 1.2, 1.2);	

	makeLuaSprite('bush1', 'tooslow/OuterBush', -450, 300);
    scaleObject('bush1', 1.2, 1.2);	

	makeLuaSprite('Grassfloor', 'tooslow/Grass', -650, 550);
	--setScrollFactor('Grassfloor', 0.9, 0.9);
	scaleObject('Grassfloor', 1.2, 1.2);	

       makeLuaSprite('tails', 'tooslow/DeadTailz', -400, 0);
	   scaleObject('tails', 1.2, 1.2);	   
       --setScrollFactor('TailsSpikeAnimated', 0.9, 0.9);


	addLuaSprite('SKY', false);
	addLuaSprite('BGtrees', false);
	addLuaSprite('midtrees1',false);
	addLuaSprite('midtrees2',false);
	addLuaSprite('midtrees3',false);
	addLuaSprite('treesL',false);	
	addLuaSprite('treesR',false);
	addLuaSprite('bush1',false);		
	addLuaSprite('Grassfloor', false);
	addLuaSprite('TailsSpikeAnimated', false);
	addLuaSprite('TAIL', false);
	addLuaSprite('EGGMAN', false);
    addLuaSprite('tails', false);
	addLuaSprite('KNUCKLE', false);
	addLuaSprite('fronttrees', true);
scaleObject('GF', 0.8, 0.8);
		
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end