///Talking
var speechBubble;
var talkDelay = 20;

if canTalk == true and obj_controller.roomClear_G
{
    if gamepad_button_check(gpNum, gp_face1)
    {
        if answer == "A" and !conferm 
        {
            conferm = true;
            speechBubble = instance_create(x - 16, y - 10, obj_speechBubble);
        }
        if (conferm == false)
        {
            answer = "A";
            speechBubble = instance_create(x - 16, y - 10, obj_speechBubble);
        }
        audio_play_sound(snd_A, 1, false);
        canTalk = false;   
        alarm[0] = talkDelay;
    }
    
    if gamepad_button_check(gpNum, gp_face2)
    {
       if answer == "B" and !conferm 
        {
            conferm = true;
            speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
            with (speechBubble)
            {
                sprite_index = spr_talk_B;
            }
        }
        if (conferm == false)
        {
            answer = "B";
            speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
             with (speechBubble)
            {
                sprite_index = spr_talk_B;
            }           
        }
       audio_play_sound(snd_B, 1, false);
       canTalk = false;   
       alarm[0] = talkDelay;
    }   
    
    if gamepad_button_check(gpNum, gp_face3)
    {
       if answer == "X" and !conferm 
        {
            conferm = true;
            speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
            with (speechBubble)
            {
                sprite_index = spr_talk_X;
            }    
        }
        if (conferm == false)
        {
            answer = "X";
            speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
            with (speechBubble)
            {
                 sprite_index = spr_talk_X;
            }
        }
       audio_play_sound(snd_X, 1, false);
       canTalk = false;   
       alarm[0] = talkDelay;
    }   
    
    if gamepad_button_check(gpNum, gp_face4)
    {
       if answer == "Y" and !conferm 
        {
            conferm = 1;
            speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
            with (speechBubble)
            {
                sprite_index = spr_talk_Y;
            }    
        }
        if (conferm == false)
        {
          answer = "Y";
          speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
          with (speechBubble)
          {
               sprite_index = spr_talk_Y;
          }          
        }
       audio_play_sound(snd_Y, 1, false);
       canTalk = false;   
       alarm[0] = talkDelay;
    }
    
     if gamepad_button_check(gpNum, gp_start)
    {
       if answer == "Boss" and !conferm 
        {
            conferm = 1;
            speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
            with (speechBubble)
            {
                sprite_index = spr_talk_Boss;
            }    
        }
        if (conferm == false)
        {
          answer = "Boss";
          speechBubble =  instance_create(x - 16, y - 10, obj_speechBubble);
          with (speechBubble)
          {
               sprite_index = spr_talk_Boss;
          }          
        }
       canTalk = false;   
       alarm[0] = talkDelay;
    }

}