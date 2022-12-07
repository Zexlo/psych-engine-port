function onUpdate(elapsed)
    if getSongPosition() >= 1000 then
        -- do nothing
    else
        --debugPrint('in');
        noteTweenAlpha('hidea', 0, 0, 0.001, 'linear');
        --debugPrint('?');
        noteTweenAlpha('hideb', 1, 0, 0.001, 'linear');
        noteTweenAlpha('hidec', 2, 0, 0.001, 'linear');
        --debugPrint('here');
        noteTweenAlpha('hided', 3, 0, 0.001, 'linear');
        --debugPrint('there');
    end
end