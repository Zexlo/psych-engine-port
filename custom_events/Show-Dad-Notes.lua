function onEvent(name, value1, value2)
	if name == 'Show-Dad-Notes' then
		noteTweenAlpha('show1D', 0, 1, value1, 'linear');
		noteTweenAlpha('show2D', 1, 1, value1, 'linear');
		noteTweenAlpha('show3D', 2, 1, value1, 'linear');
		noteTweenAlpha('show4D', 3, 1, value1, 'linear');
	end
end
