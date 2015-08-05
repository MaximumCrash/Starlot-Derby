if (i > 0) //Draws the line based on the Array position. 
{
for(j=1;j<i;j+=1)
draw_pitch(xx[j-1],yy[j-1],xx[j],yy[j],sprite1); //A seperate script. Not important for storing positions only displaying our curve. 
}

//Debug Information
draw_set_color(c_black); 
draw_text(10,10,"Array:"+string(i));
draw_text(10,50,"Time:"+string(time));

//Tap Positions. 
draw_set_color(c_fuchsia);
draw_circle(room_width/2,50,30,true); 
draw_circle(room_width/2,room_height-50,30,true); 
draw_circle(room_width/2,room_height-50,20,false); 
