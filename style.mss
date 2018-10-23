/* ---- PALETTE ---- */

@building: #ccc;
@motorway: #F8D6E0; /* #90BFE0 */
@trunk: #FFFABB;
@primary: @trunk;
@secondary: @trunk;
@road: #bbb;
@track: @road;
@footway: #fff;
@cycleway: #fff;


Map {
  background-color:#e5ecaa;
  buffer-size:256;
}

#water {
  [fclass='water'],[fclass='river']  {
    polygon-fill:#6A9AA3;
  }
}


#waterways[fclass='river'] {
  line-width:3;
  line-color:#6A9AA3;
}



#natural[fclass='forest'], #landuse[fclass='wood'],#landuse[fclass='forest'] {
  polygon-fill:#abb93e;
}

#landuse  {

  [fclass='residential'], [fclass='commercial'],  [fclass='retail'] {
    polygon-fill:#eee;
   }
  [fclass='brownfield'],[fclass='construction'] {
      polygon-fill:@building;
    }

}


#points-fill [fclass="university"]{
   polygon-fill:#cdd685;
 }


#landuse::greenery {
   [fclass='grass'], [fclass='recreation_ground'], [fclass='common'], [fclass='park']  {
    polygon-fill:#becd45;
  }
  }

#points-fill [fclass="pitch"]{
   polygon-fill:#BECD45;
 }



#buildingsnew [zoom > 13], #points-fill [fclass="sports_centre"][zoom > 13]{

  building-fill:@building;
  //building-height:0.00001;
  building-height:2;

}


/* ---- Car parks  ---- */

#traffic[fclass="parking"] {
     polygon-fill:#dddddd;
}



/* Testing campus outline */
/* Leaving out for now as doesn’t look completely correct - eg water tower shouldn’t be in*/
/*
#campus-outlines[osm_id="226571683"]{
  line-width:3;
  line-color:rgba(255, 108,0,0.8);

  [zoom>=16] {
    line-width:10;
    line-color:rgba(255, 108,0,0.4);
   }
}

*/
