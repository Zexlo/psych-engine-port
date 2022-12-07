function onEvent(name,value1,value2)

    if name == "Set Cam Zoom" then
        
        setProperty("defaultCamZoom",value1) 
        if not value1 == '' then
            setProperty("defaultcamGame.zoom",value1) 
	end
            
    end


end