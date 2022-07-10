function onCreate()

	makeLuaSprite('Runstage', 'YCR/P2sky', -450, -100); -- X,Y pos
        setScrollFactor('P2sky', 0.9, 0.9);
	    
    makeLuaSprite('RunT', 'YCR/P2trees', -450, -100); -- X,Y pos
    setScrollFactor('P2trees', 0.9, 0.9);
    
    	makeLuaSprite('RunG', 'YCR/P2ground', -450, -100); -- X,Y pos
    setScrollFactor('P2ground', 0.9, 0.9);

addLuaSprite('Runstage', false); -- false = add behind characters, true = add over characters
  addLuaSprite('RunT', false); -- false = add behind characters, true = add over characters
   addLuaSprite('RunG', false)
   
   	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end