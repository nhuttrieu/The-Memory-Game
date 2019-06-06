$fn = 90;

x = 108; //width of the box
y = 239; //length of the box
z = 108; //height of the box - temporary

difference(){
cube([x,y,z], center = true);

translate([0,0,1]){ 
cube ([x-4,y-4,z-2], center = true);
}
}

translate([-52,-47,-1]){
 cube([55.5,164.5,3]);  //board = 54.5 * 163.5
}

//column to hold under the board - avoid hard pressing
translate([-52,-47,-52]){
cube([10,10,51]);}

translate([-6.5,-47,-52]){
cube([10,10,51]);}

translate([-6.5,108,-52]){
cube([10,10,51]);}

translate([-52,108,-52]){
cube([10,10,51]);}
/*
translate([2.5,-47,0]){
cube([1,164.5,1]);     //horizontal wall of board
}

translate([-52,-47,0]){
cube([54.5,1,1]);      //vertical wall of board
}
////////////////////////////////////////////////////////
translate([35,-92,-52]){
 cube([17,1,50]);     //vertical wall of battery
}

translate([35,-117.5,-52]){
cube([1,25.5,25]);      //horizontal wall of battery
}
*/
////////////////////////////////////////////////////////
//start of the basic drill
h_of_drill = 48;
translate([47,-117.5,h_of_drill]){      
cube([5,5,5]);}

translate([47,112.5,h_of_drill]){
cube([5,5,5]);}

translate([-52,112.5,h_of_drill]){
cube([5,5,5]);}

translate([-52,-117.5,h_of_drill]){
cube([5,5,5]);}