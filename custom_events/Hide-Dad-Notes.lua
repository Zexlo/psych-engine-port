function onEvent(name, value1, value2)
	if name == 'Hide-Dad-Notes' then
		noteTweenAlpha('hide1', 0, 0, 0.001, 'linear');
		noteTweenAlpha('hide2', 1, 0, 0.001, 'linear');
		noteTweenAlpha('hide3', 2, 0, 0.001, 'linear');
		noteTweenAlpha('hide4', 3, 0, 0.001, 'linear');
	end
end