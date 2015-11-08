if room = Init {
Transistor(Up,room0,false,c_white  ,0,4); 
}

if room = Settings or room= room50{
Transistor(Up,room0,true,make_color_rgb(13,252,169),make_color_rgb(8,127,81),1); 
}

if room = room0 and Controller.prevRoom = 1 {
Transistor(false,room50,true,make_color_rgb(13,252,169),make_color_rgb(8,127,81),1); 
}
