if hp <=0 and !dead
{
    dead = true;
    sprite_index = deathSprite;
    image_speed =  .1;
    audio_play_sound(snd_playerdeath, 1, false);
    obj_controller.numPlayersDead += 1;
}
