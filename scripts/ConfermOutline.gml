if conferm and isNormalSprite
{
    switch (answer)
    {
        case "A":
           sprite_index = greenSprite;
           normalSprite = false;
           break;
        
        case "B":
            sprite_index = redSprite;
            normalSprite = false;
            break;
        
        case "Y":
            sprite_index = yellowSprite;
            normalSprite = false;
            break;
        
        case "X":
            sprite_index = blueSprite;
            normalSprite = false;
            break;
    }
}
else if !dead and !conferm and !isNormalSprite
{
    sprite_index = normalSprite;
}