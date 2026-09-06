local counter = 0



function script.update(dt)
    
    counter = counter + dt
    ac.log(counter)

    local campossdir = ac.getCameraForward()
    local camposs = ac.getCameraPosition()
    ac.log(campossdir)


    

    -- F12 teleport only works when the car is stopped.
    local car = ac.getCar(0)
    local speedKmh = car and math.abs(car.speedKmh) or 0

    if ac.isKeyDown(123) and counter >= 1 and speedKmh < 1 then
        physics.setCarPosition(0,camposs,-campossdir)
        counter = 0
    end    




end
