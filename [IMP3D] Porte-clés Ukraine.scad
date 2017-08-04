/*-----------------------------------------------
-------------------------------------------------
              [ Porte-clés Trizoub ]
             Par : D.Sébastien (U2Vi)

Licenses: [CC BY-NC 3.0 FR] 
(Creative Commons - Attribution - Non-Commercial)
-------------------------------------------------
-----------------------------------------------*/


module rondelle (di, de, e)
    {
        $fn=100;
        difference ()
            {
                cylinder (r=de/2, h=e);
                translate ([0,0,-1]) cylinder (r=di/2, h=e+2);
            }
    }

translate ([-2.75,-10.75,-32]) color ("Lightblue") import ("Base.stl");
translate ([-2.75,-10.75,-30]) color ("Lightblue") import ("Base.stl");
translate ([-2.75,-10.75,-28]) import ("trident-trizoub+tour.stl");
translate ([-2.75,-10.75,-26]) import ("trident-trizoub+tour.stl");

translate ([4,-3.5,0])
    {
        translate ([-6,25,0]) rondelle (4, 8, 8);
        translate ([-7,27.5,0]) linear_extrude (height=8) polygon (points    =[[0,0],[4.5,0],[4.5,4.5]]);
        translate ([-7,18,0]) linear_extrude (height=8) polygon (points    =[[4.5,0],[0,4.5],[4.5,4.5]]);
    }
