local counter = 0



function script.update(dt)
    
    counter = counter + dt
    ac.log(counter)

    local campossdir = ac.getCameraForward()
    local camposs = ac.getCameraPosition()
    ac.log(campossdir)


    

    if ac.isKeyDown(123) and counter >= 1 then
        physics.setCarPosition(0,camposs,-campossdir)
        counter = 0
    end    




end
