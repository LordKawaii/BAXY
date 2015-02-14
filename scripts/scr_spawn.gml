///spawn enemies

var spawnBoxTopLeft  = 40;
var spawnBoxBottomRight = 110;
var amt = 20 + irandom(obj_controller.roomsCleared_G * irandom(4));

repeat(amt)
{
var w = spawnBoxTopLeft + irandom(room_width - spawnBoxBottomRight);
var h = spawnBoxTopLeft + irandom(room_height - spawnBoxBottomRight);
    instance_create(w,h,obj_Slime);
}