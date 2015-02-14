///Move to next room if door is open
if (place_meeting(x, y, obj_door_West))
{
    if (obj_door_West.opened == 1)
    {
        obj_controller.lastDoor_G = obj_door_West;
        room_restart();
        obj_controller.roomClear_G = false;
        obj_controller.roomsCleared_G += 1;
        obj_controller.hp_max_G += 5;
        x = xref;
        y = yref;
        
        if obj_controller.player1Start_G = true
        {
            obj_player1.hp += 5;
        }
        
        if obj_controller.player2Start_G = true
        {
            obj_player2.hp += 5;
        }
        
        if obj_controller.player3Start_G = true
        {
            obj_player3.hp += 5;
        }
        
        if obj_controller.player4Start_G = true
        {
           obj_player4.hp += 5;
        }    
        
        obj_door_West.opened = 0;
    }
}

if (place_meeting(x, y, obj_door_East))
{
    if (obj_door_East.opened == 1)
    {
        obj_controller.lastDoor_G = obj_door_East;
        room_restart();
        obj_controller.roomClear_G = false;
        obj_controller.roomsCleared_G += 1;
        obj_controller.reloadSpd_G -= 0.2;
        x = xref;
        y = yref;
        
        obj_door_East.opened = 0;
    }
}

if (place_meeting(x, y, obj_door_North))
{
    if (obj_door_North.opened == 1)
    {
        obj_controller.lastDoor_G = obj_door_North;
        room_restart();
        obj_controller.roomClear_G = false;
        obj_controller.roomsCleared_G += 1;
        obj_controller.walkSpd_G += 0.1;
        x = xref;
        y = yref;
        
        obj_door_North.opened = 0;
    }
}

if (place_meeting(x, y, obj_door_South))
{
    if (obj_door_South.opened == 1)
    {
        obj_controller.lastDoor_G = obj_door_South;
        room_restart();
        obj_controller.roomClear_G = false;
        obj_controller.roomsCleared_G += 1;
        obj_controller.bulletSize_G += 0.1;
        x = xref;
        y = yref;

        obj_door_South.opened = 0;
    }
}