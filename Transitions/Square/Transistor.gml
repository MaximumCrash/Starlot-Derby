Grow = argument0; 
whichRoom = argument1; 
squaresize = 65.5;
color0 = argument3;
alternate = argument2;

if alternate {
color1 = argument4; 
}
Speed = argument5;  
if Grow {
if curRow >= 0 {
if RowSize[0] < 1.2 {
RowSize[0] += 0.1;
}
if RowSpin[0] > 0 {
RowSpin[0] -= 3; 
}
}


if curRow >= 1 {
if RowSize[1] < 1.2 {
RowSize[1] += 0.1;
}
if RowSpin[1] > 0 {
RowSpin[1] -= 3; 
}
}

if curRow >= 2 {
if RowSize[2] < 1.2 {
RowSize[2] += 0.1;
}
if RowSpin[2] > 0 {
RowSpin[2] -= 3; 
}
}

if curRow >= 3 {
if RowSize[3] < 1.2 {
RowSize[3] += 0.1;
}
if RowSpin[3] > 0 {
RowSpin[3] -= 3; 
}
}

if curRow >= 4 {
if RowSize[4] < 1.2 {
RowSize[4] += 0.1;
}
if RowSpin[4] > 0 {
RowSpin[4] -= 3; 
}
}

if curRow >= 5 {
if RowSize[5] < 1.2 {
RowSize[5] += 0.1;
}
if RowSpin[5] > 0 {
RowSpin[5] -= 3; 
}
}

if curRow >= 6 {
if RowSize[6] < 1.2 {
RowSize[6] += 0.1;
}
if RowSpin[6] > 0 {
RowSpin[6] -= 3; 
}
}

if curRow >= 7 {
if RowSize[7] < 1.2 {
RowSize[7] += 0.1;
}
if RowSpin[7] > 0 {
RowSpin[7] -= 3; 
}
}

if curRow >= 8 {
if RowSize[8] < 1.2 {
RowSize[8] += 0.1;
}
if RowSpin[8] > 0 {
RowSpin[8] -= 3; 
}
}

if curRow >= 9 {
if RowSize[9] < 1.2 {
RowSize[9] += 0.1;
}
if RowSpin[9] > 0 {
RowSpin[9] -= 3; 
}
}

if curRow >= 10 {
if RowSize[10] < 1.2 {
RowSize[10] += 0.1;
}
if RowSpin[10] > 0 {
RowSpin[10] -= 3; 
}
}

if curRow >= 11 {
if RowSize[11] < 1.2 {
RowSize[11] += 0.1;
}
else {

}
if RowSpin[11] > 0 {
RowSpin[11] -= 3; 
}
}
}
else if !Grow {
if curRow >= 0 {
if RowSize[0] > 0 {
RowSize[0] -= 0.1;
}
if RowSpin[0] < 45 {
RowSpin[0] += 3; 
}
}


if curRow >= 1 {
if RowSize[1] > 0 {
RowSize[1] -= 0.1;
}
if RowSpin[1] < 45 {
RowSpin[1] += 3; 
}
}

if curRow >= 2 {
if RowSize[2] > 0 {
RowSize[2] -= 0.1;
}
if RowSpin[2] < 45 {
RowSpin[2] += 3; 
}
}

if curRow >= 3 {
if RowSize[3] > 0 {
RowSize[3] -= 0.1;
}
if RowSpin[3] < 45 {
RowSpin[3] += 3; 
}
}

if curRow >= 4 {
if RowSize[4] > 0 {
RowSize[4] -= 0.1;
}
if RowSpin[4] < 45 {
RowSpin[4] += 3; 
}
}

if curRow >= 5 {
if RowSize[5] > 0 {
RowSize[5] -= 0.1;
}
if RowSpin[5] < 45 {
RowSpin[5] += 3; 
}
}

if curRow >= 6 {
if RowSize[6] > 0 {
RowSize[6] -= 0.1;
}
if RowSpin[6] < 45 {
RowSpin[6] += 3; 
}
}

if curRow>= 7 {
if RowSize[7] > 0 {
RowSize[7] -= 0.1;
}
if RowSpin[7] < 45 {
RowSpin[7] += 3; 
}
}

if curRow >= 8 {
if RowSize[8] > 0 {
RowSize[8] -= 0.1;
}
if RowSpin[8] < 45 {
RowSpin[8] += 3; 
}
}

if curRow >= 9 {
if RowSize[9] > 0 {
RowSize[9] -= 0.1;
}
if RowSpin[9] < 45 {
RowSpin[9] += 3; 
}
}

if curRow >= 10 {
if RowSize[10] > 0 {
RowSize[10] -= 0.1;
}
if RowSpin[10] < 45 {
RowSpin[10] += 3; 
}
}

if curRow >= 11 {
if RowSize[11] > 0 {
RowSize[11] -= 0.1;
}
else {

}
if RowSpin[11] < 45 {
RowSpin[11] += 3; 
}
}

}



 



if TranTimer > 0 {
TranTimer -= 1; 
}

if TranTimer = 0 {
if Grow {
if curRow < 17 {
curRow += 1; 
}

if curRow > 16 {
if whichRoom != room50 {
room_goto(whichRoom);
} 
}
}
else if !Grow{
if curRow < 17 {
curRow += 1; 
}

if curRow >16 {
if whichRoom != room50 {
room_goto(whichRoom);
}
}
}
TranTimer = Speed; 
}



if alternate = false {
//ROW 0
draw_sprite_ext(sprite54,0,32,32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color0,1); 



//ROW 1
draw_sprite_ext(sprite54,0,32,(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*3),RowSize[1]+0.1,RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*3),RowSize[1]+0.1,RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*3),RowSize[1]+0.1,RowSize[1],RowSpin[1],color0,1); 

//ROW 2
draw_sprite_ext(sprite54,0,32,(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*5),RowSize[2]+0.1,RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*5),RowSize[2]+0.1,RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*5),RowSize[2]+0.1,RowSize[2],RowSpin[2],color0,1); 

//ROW 3
draw_sprite_ext(sprite54,0,32,(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*7),RowSize[3]+0.1,RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*7),RowSize[3]+0.1,RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*7),RowSize[3]+0.1,RowSize[3],RowSpin[3],color0,1); 


//ROW 4
draw_sprite_ext(sprite54,0,32,(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*9),RowSize[4]+0.1,RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*9),RowSize[4]+0.1,RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*9),RowSize[4]+0.1,RowSize[4],RowSpin[4],color0,1); 

//ROW 5
draw_sprite_ext(sprite54,0,32,(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*11),RowSize[5]+0.1,RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*11),RowSize[5]+0.1,RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*11),RowSize[5]+0.1,RowSize[5],RowSpin[5],color0,1); 

//ROW 6
draw_sprite_ext(sprite54,0,32,(32*13),RowSize[6],RowSize[6]+0.1,RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*13),RowSize[6],RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*13),RowSize[6],RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*13),RowSize[6],RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*13),RowSize[6],RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*13),RowSize[6]+0.1,RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*13),RowSize[6]+0.1,RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*13),RowSize[6]+0.1,RowSize[6],RowSpin[6],color0,1); 

//ROW 7
draw_sprite_ext(sprite54,0,32,(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*15),RowSize[7]+0.1,RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*15),RowSize[7]+0.1,RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*15),RowSize[7]+0.1,RowSize[7],RowSpin[7],color0,1); 

//ROW 8
draw_sprite_ext(sprite54,0,32,(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*17),RowSize[8]+0.1,RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*17),RowSize[8]+0.1,RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*17),RowSize[8]+0.1,RowSize[8],RowSpin[8],color0,1); 

//ROW 9
draw_sprite_ext(sprite54,0,32,(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*19),RowSize[9]+0.1,RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*19),RowSize[9]+0.1,RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*19),RowSize[9]+0.1,RowSize[9],RowSpin[9],color0,1); 

//ROW 10
draw_sprite_ext(sprite54,0,32,(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*21),RowSize[10]+0.1,RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*21),RowSize[10]+0.1,RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*21),RowSize[10]+0.1,RowSize[10],RowSpin[10],color0,1); 

//ROW 11
draw_sprite_ext(sprite54,0,32,(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*23),RowSize[11]+0.1,RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*23),RowSize[11]+0.1,RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*23),RowSize[11]+0.1,RowSize[11],RowSpin[11],color0,1); 
}
else {
//ROW 0 

draw_sprite_ext(sprite54,0,32,32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),32,RowSize[0],RowSize[0],RowSpin[0],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),32,RowSize[0],RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),32,RowSize[0]+0.1,RowSize[0],RowSpin[0],color1,1); 



//ROW 1
draw_sprite_ext(sprite54,0,32,(32*3),RowSize[1],RowSize[1],RowSpin[1],color1,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*3),RowSize[1],RowSize[1],RowSpin[1],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*3),RowSize[1],RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*3),RowSize[1],RowSize[1],RowSpin[1],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*3),RowSize[1]+0.1,RowSize[1],RowSpin[1],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*3),RowSize[1]+0.1,RowSize[1],RowSpin[1],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*3),RowSize[1]+0.1,RowSize[1],RowSpin[1],color0,1); 

//ROW 2
draw_sprite_ext(sprite54,0,32,(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*5),RowSize[2],RowSize[2],RowSpin[2],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*5),RowSize[2],RowSize[2],RowSpin[2],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*5),RowSize[2],RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*5),RowSize[2]+0.1,RowSize[2],RowSpin[2],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*5),RowSize[2]+0.1,RowSize[2],RowSpin[2],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*5),RowSize[2]+0.1,RowSize[2],RowSpin[2],color1,1); 

//ROW 3
draw_sprite_ext(sprite54,0,32,(32*7),RowSize[3],RowSize[3],RowSpin[3],color1,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*7),RowSize[3],RowSize[3],RowSpin[3],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*7),RowSize[3],RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*7),RowSize[3],RowSize[3],RowSpin[3],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*7),RowSize[3]+0.1,RowSize[3],RowSpin[3],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*7),RowSize[3]+0.1,RowSize[3],RowSpin[3],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*7),RowSize[3]+0.1,RowSize[3],RowSpin[3],color0,1); 


//ROW 4
draw_sprite_ext(sprite54,0,32,(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*9),RowSize[4],RowSize[4],RowSpin[4],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*9),RowSize[4],RowSize[4],RowSpin[4],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*9),RowSize[4],RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*9),RowSize[4]+0.1,RowSize[4],RowSpin[4],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*9),RowSize[4]+0.1,RowSize[4],RowSpin[4],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*9),RowSize[4]+0.1,RowSize[4],RowSpin[4],color1,1); 

//ROW 5
draw_sprite_ext(sprite54,0,32,(32*11),RowSize[5],RowSize[5],RowSpin[5],color1,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*11),RowSize[5],RowSize[5],RowSpin[5],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*11),RowSize[5],RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*11),RowSize[5],RowSize[5],RowSpin[5],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*11),RowSize[5]+0.1,RowSize[5],RowSpin[5],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*11),RowSize[5]+0.1,RowSize[5],RowSpin[5],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*11),RowSize[5]+0.1,RowSize[5],RowSpin[5],color0,1); 

//ROW 6
draw_sprite_ext(sprite54,0,32,(32*13),RowSize[6],RowSize[6]+0.1,RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*13),RowSize[6],RowSize[6],RowSpin[6],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*13),RowSize[6],RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*13),RowSize[6],RowSize[6],RowSpin[6],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*13),RowSize[6],RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*13),RowSize[6]+0.1,RowSize[6],RowSpin[6],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*13),RowSize[6]+0.1,RowSize[6],RowSpin[6],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*13),RowSize[6]+0.1,RowSize[6],RowSpin[6],color1,1); 

//ROW 7
draw_sprite_ext(sprite54,0,32,(32*15),RowSize[7],RowSize[7],RowSpin[7],color1,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*15),RowSize[7],RowSize[7],RowSpin[7],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*15),RowSize[7],RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*15),RowSize[7],RowSize[7],RowSpin[7],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*15),RowSize[7]+0.1,RowSize[7],RowSpin[7],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*15),RowSize[7]+0.1,RowSize[7],RowSpin[7],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*15),RowSize[7]+0.1,RowSize[7],RowSpin[7],color0,1); 

//ROW 8
draw_sprite_ext(sprite54,0,32,(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*17),RowSize[8],RowSize[8],RowSpin[8],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*17),RowSize[8],RowSize[8],RowSpin[8],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*17),RowSize[8],RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*17),RowSize[8]+0.1,RowSize[8],RowSpin[8],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*17),RowSize[8]+0.1,RowSize[8],RowSpin[8],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*17),RowSize[8]+0.1,RowSize[8],RowSpin[8],color1,1); 

//ROW 9
draw_sprite_ext(sprite54,0,32,(32*19),RowSize[9],RowSize[9],RowSpin[9],color1,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*19),RowSize[9],RowSize[9],RowSpin[9],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*19),RowSize[9],RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*19),RowSize[9],RowSize[9],RowSpin[9],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*19),RowSize[9]+0.1,RowSize[9],RowSpin[9],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*19),RowSize[9]+0.1,RowSize[9],RowSpin[9],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*19),RowSize[9]+0.1,RowSize[9],RowSpin[9],color0,1); 

//ROW 10
draw_sprite_ext(sprite54,0,32,(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*21),RowSize[10],RowSize[10],RowSpin[10],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*21),RowSize[10],RowSize[10],RowSpin[10],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*21),RowSize[10],RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*21),RowSize[10]+0.1,RowSize[10],RowSpin[10],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*21),RowSize[10]+0.1,RowSize[10],RowSpin[10],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*21),RowSize[10]+0.1,RowSize[10],RowSpin[10],color1,1); 

//ROW 11
draw_sprite_ext(sprite54,0,32,(32*23),RowSize[11],RowSize[11],RowSpin[11],color1,1); 
draw_sprite_ext(sprite54,0,squaresize+32,(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*2),(32*23),RowSize[11],RowSize[11],RowSpin[11],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*3),(32*23),RowSize[11],RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*4),(32*23),RowSize[11],RowSize[11],RowSpin[11],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*5),(32*23),RowSize[11]+0.1,RowSize[11],RowSpin[11],color0,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*6),(32*23),RowSize[11]+0.1,RowSize[11],RowSpin[11],color1,1); 
draw_sprite_ext(sprite54,0,32+(squaresize*7),(32*23),RowSize[11]+0.1,RowSize[11],RowSpin[11],color0,1); 
}
