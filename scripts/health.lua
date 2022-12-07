 function onCreate()
 	devbot = false
	end
 
 function onUpdatePost(elapsed)
 if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F11') and devbot == false then
    setProperty('health', 2);
	--devbot = true

	
end
	
end	