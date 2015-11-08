run = true; 
squaresize = 65.5; 
transColor = c_white;
done = false;
 //0 if True, 11 if False
Up = true;
if room = room0 and Controller.prevRoom = 1 {
Up =false; 

}
if Up {
curRow = 0;
}
else {

curRow = 0;
}

for (j = 0; j < 12; j++) {
if Up { 
RowSize[j] = 0;
}
else {
RowSize[j] = 1.1;
}

} 

for (i = 0; i < 12; i++) {
if Up {
RowSpin[i] = 45; 
}
else {
RowSpin[i] = 0; 
}
}

TranTimer = 5;
