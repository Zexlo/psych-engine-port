 function onCreate()
 	disabled = false
	end
 
 function onUpdatePost(elapsed)
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F11') and disabled == false then	
		disabled = true
	elseif getPropertyFromClass('flixel.FlxG', 'keys.justPressed.F11') and disabled == true then
		disabled = false

	
end

end	