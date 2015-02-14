if (gamepad_button_check(controllerNum, gp_start))
{
    if obj_controller.numPlayerSel > 0
    {
        room_goto(rm_1);
    }
}

if (gamepad_button_check(controllerNum, gp_face1))
{
    if selected = false
    {
        obj_controller.numPlayerSel += 1;
    }
    selected = true;
}

if (gamepad_button_check(controllerNum, gp_face2))
{
    selected = false;
    if obj_controller.numPlayerSel > 0
    {
        obj_controller.numPlayerSel -= 1;
    }
}