function onEvent(name, value1, value2)
       if name == 'tweenX' then
       object = (value1);
       amount = tonumber(value2);


doTweenX('tween', object, amount, 1, 'linear');
end
end