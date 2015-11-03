//If the player taps on the screen.
if mouse_check_button(mb_left) 
{
      //If On equals 1 and the array positioning is < 250. 
    if (on == 1) and i<250 
    {
          //If we haven't run over the timelimit for drawing and we can draw
        if time != 300 and drawOk = true 
        {
              //If finger is inside of Start Area (Pitching Base)        
            if !point_in_circle(mouse_x,mouse_y,room_width/2,room_height-50,20) 
            {
                
                xx[i]=mouse_x //Mouse_X positioning. 
                yy[i]=mouse_y //Mouse_Y positioning.
                alarm[0]=1.5 //Alarm 0 runs every 1.5 frames.
                on=0 //Slows the Data intake.
                i+=1; //Adds to the array positioning. 
                time += 0.015; //Add up how long we have been drawing the path. 
            }
        }
    }
}
else 
{
drawOk = false; //If we don't have our finger down we cannot draw. 
}

//If our finger is within a point in the circle. 
if point_in_circle(mouse_x,mouse_y,room_width/2,room_height-50,30) 
{
      If we have released our finger, create the ball. 
    if mouse_check_button_released(mb_left) 
    {
        if instance_number(obj_follow) < 1 
        {
          instance_create(xx[0],yy[0],obj_follow);
        }
    }
}

//On the Start of a New Path. If our finger is inside the circle. 
if point_in_circle(mouse_x,mouse_y,room_width/2,50,30) 
{
      //If our finger is still on the screen. 
    if  mouse_check_button_pressed(mb_left)  
    {
      time = 0; //Set Time to 0. 
      drawOk = true; //We can draw.
      i = 0; //Set our Array Position to 0. 
            
            //If the Ball still exists and we want to draw a new path, destroy the ball. 
        if instance_exists(obj_follow) 
        {
            with (obj_follow) 
            {
              instance_destroy(); 
            }
        }
   }
}



