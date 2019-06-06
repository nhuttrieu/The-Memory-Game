$fn = 50;

//CHUA CO UNION
//KHAI BAO PHAN TREN CUA SCREW
bowl = 2;      //do cao phan tren cua pheu 
bowl_r = 1.5;    //ban kinh cua pheu

stem = 2;      //do cao phan duoi cua pheu 
stem_r =0;     //ban kinh phan duoi cua pheu

neck_r = 0;    //ban kinh co

thickness =0.5;  //do day cua total pheu

curve_r =0.1; 

eps = 0.01; 

module profile(){ //khai bao hinh goc dau tien de tao thanh 1 truc kin ruot
hull(){
translate([stem_r, 0]){ 
       square([thickness, eps]);} 

translate([(thickness)*0.5,stem]){
    square([thickness,eps]);}

translate([stem_r,bowl + stem-eps]){    //stem-r bang 0 va chieu dai square bat dau tu trong truc Y 
       square([bowl_r, eps]); }
   }
   }
   
module profile1(){      //khai bao hinh thu 2 de cat hinh goc dau tien
hull(){
translate([stem_r, 0]){ 
       square([thickness, eps]);} 

translate([neck_r + curve_r, stem]){ 
                        circle(r = curve_r); }

translate([bowl_r - thickness, stem + bowl - eps]){         //vi goc cua square3 hinh thu 2 cach goc cua square3 hinh dau tien 0.5, nen mui cua hinh goc dau tien cung dc cach 0.5.
    //vi vay phai lay bowl_r - thickness
       square([thickness, eps]); }
   }
   }

/*profile();          //TEST phan 1 truoc khi noi vao de cat
translate([thickness, 0]){
        profile1();}


difference(){       //TEST phan 2 noi vao va cat ra boi hinh 2
    profile();
    translate([thickness, 0]){
        profile1();}
    }*/


module another_profile(){
rotate_extrude(){
difference(){
    profile();
    translate([thickness, 0]){
        profile1();}
    }    
}
}
/*translate([2.1,2.1,-2]){
another_profile();}*/  //khai bao truc kin ruot
    
/***************************************************************/
module profile3(){
difference(){           //make the holes on the surface and area for the display
cube([108,239,1]);          //main cover
for( n = [1:2]){
    for (m = [1:4]){
translate([n*20,(239-(30*m)),0]){
cylinder(h=1, d = 6);       //holes of the surface
}
}
}
translate([60,130,0]){      //display
cube([23.5, 70.5,1]);
}
translate([70,119,0]){      //buzzer
cylinder(h=1, d = 7);}

/*translate([2.1,2.1,-2]){
    another_profile();}*/

}
/***************************************************************/
for (i = [1:2]){            //cylinder in lower side
    for (j = [1:4]){
translate([i*20,(239-(30*j)),-17]){
difference(){
cylinder(h = 17, d = 7);
cylinder(h = 17, d = 6);
}
}
}
}

//smaller frame under the cover, width = 2
translate([1,1,-1]){        //1st
    cube([106,2,1]);}
translate([1,236,-1]){      //2nd
    cube([106,2,1]);}

translate([1,3,-1]){        //3rd
    cube([2,233,1]);}

translate([105,3,-1]){      //4th
    cube([2,233,1]);}
}

//LAY NGUYEN CAI BANG O TREN DE TRU CHO MAY CAI SCREW
difference(){               
    profile3();
    translate([2.1,2.1,-2]){
        another_profile();}
    translate([105.9,2.1,-2]){
        another_profile();}
    translate([2.1,236.9,-2]){
        another_profile();}
    translate([105.9,236.9,-2]){
        another_profile();}  
    }
