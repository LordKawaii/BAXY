///Movement
if (!dead)
    {
    joy_hor = gamepad_axis_value(gpNum, gp_axislh);
    joy_ver = gamepad_axis_value(gpNum, gp_axislv);
    
    if (abs(joy_hor) > 0.2) || (abs(joy_ver) > 0.2)
        {
            hspd = joy_hor * obj_controller.walkSpd_G;
            vspd = joy_ver * obj_controller.walkSpd_G;
            image_speed = 0.1;
        }
    else
        {
            hspd += (0 - hspd) * 0.3;
            vspd += (0 - vspd) * 0.3;
            image_speed = 0;
        }
    
    phy_position_x += hspd;
    phy_position_y += vspd;
    
    if abs(hspd) > 0 or abs(vspd) >0
        {
        instance_create(phy_position_x,phy_position_y,obj_dust)
        }
}