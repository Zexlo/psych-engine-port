function onEvent(name, value1, value2)
	if name == 'Show-Dad-Notes' then
if getPropertyFromClass('ClientPrefs', 'middleScroll') == true then
alpha = 0.5
else
alpha = 1
end

     for i = 0,3 do
     noteTweenAlpha(i,i,alpha,0.2,'linear')
		end
	end
end