function onEvent(name, value1, value2)
	if name == 'Show-Dad-Notes' then
		noteTweenAlpha('show1', 0, 1, 0.001, 'linear');
		noteTweenAlpha('show2', 1, 1, 0.001, 'linear');
		noteTweenAlpha('show3', 2, 1, 0.001, 'linear');
		noteTweenAlpha('show4', 3, 1, 0.001, 'linear');
	end
end
