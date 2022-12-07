function onCreate()

	makeLuaSprite('skyBG', 'YCR/sky', -1100, -300); -- X,Y pos   
    makeLuaSprite('Btrees', 'YCR/trees', -1100, -300); -- X,Y pos
	makeLuaSprite('Ftrees', 'YCR/TreesFront', -1100, -100); -- X,Y pos
    makeLuaSprite('Fgrass', 'YCR/Grass', -1100, -200); -- X,Y pos
	makeLuaSprite('Bgrass', 'YCR/GrassBack', -1100, -100); -- X,Y pos

    addLuaSprite('skyBG', false);
    addLuaSprite('Bgrass', false);	
    addLuaSprite('Btrees', false);
    addLuaSprite('Fgrass', false);	
    addLuaSprite('Ftrees', false);
   
   	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end