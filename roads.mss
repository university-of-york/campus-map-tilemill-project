

/* ---- ROAD COLORS ---- */

/*.roads.line { line-color: #f00; } /* debug */

.roads[fclass='motorway'] {
  .line[zoom>=7]  { 
    line-color:spin(darken(@motorway,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=10] {
    line-color:@motorway;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='motorway_link'] {
  .line[zoom>=7]  { 
    line-color:spin(darken(@motorway,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@motorway;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='trunk'],
.roads[fclass='trunk_link'] {
  .line[zoom>=7] {
    line-color:spin(darken(@trunk,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=11] {
    line-color:@trunk;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='primary'],
.roads[fclass='primary_link'] {
  .line[zoom>=7] {
    line-color:spin(darken(@primary,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@primary;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='secondary'] {
  .line[zoom>=8] {
    line-color:spin(darken(@secondary,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=12] {
    line-color:@secondary;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='secondary_link'] {
  .line[zoom>=12] {
    line-color:spin(darken(@secondary,36),-10);
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=14] {
    line-color:@secondary;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='living_street'],
.roads[fclass='residential'],
.roads[fclass='road'],
.roads[fclass='tertiary'],
.roads[fclass='unclassified'] {
  .line[zoom>=10] {
    line-color:@road;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=14] {
    line-color:#fff;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='service'] {
  .line[zoom>=13] {
    line-color:@road;
    line-cap:round;
    line-join:round;
  }
  .fill[zoom>=16] {
    line-color:#fff;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='track'] {
  .line[zoom>=13] {
    line-color:@track;
    line-cap:round;
    line-join:round;
  }
}

.roads[fclass='footway'],
.roads[fclass='path'],
.roads[fclass='pedestrian'],
.roads[fclass='steps']{
  .line[zoom>=14] {
    line-color:@footway;
    line-cap:round;
    line-join:round;
  }
}



.roads[fclass='cycleway'] {
  .line[zoom>=14] {
    line-color:@cycleway;
    line-cap:round;
    line-join:round;
  }
}

.bridges[fclass='footway'][bridge='T'],
.bridges[fclass='path'][bridge='T'],
.bridges[fclass='pedestrian'][bridge='T'],
.bridges[fclass='cycleway'][bridge='T'] {
  .line[zoom>=16]{   
    line-color:#999;  
    line-cap:butt;
    line-dasharray:0;
  }
  .fill[zoom>=16] {   
    line-color:#fff; 
  }  
}


/* ---- ROAD WIDTHS ---- */

.roads[zoom=7] {
  .line[fclass='motorway'] { line-width: 1.0; }
  .line[fclass='trunk']    { line-width: 0.8; }
  .line[fclass='primary']  { line-width: 0.6; }
}

.roads[zoom=8] {
  .line[fclass='motorway'] { line-width: 1.0; }
  .line[fclass='trunk']    { line-width: 0.8; }
  .line[fclass='primary']  { line-width: 0.5; }
  .line[fclass='secondary']{ line-width: 0.3; }
}

.roads[zoom=9] {
  .line[fclass='motorway'] { line-width: 1.0; }
  .line[fclass='trunk']    { line-width: 0.8; }
  .line[fclass='primary']  { line-width: 0.6; }
  .line[fclass='secondary']{ line-width: 0.4; }
}

.roads[zoom=10] {
  .line[fclass='motorway'] { line-width: 0.8 + 1.6; }
  .fill[fclass='motorway'] { line-width: 0.8; }
  
  .line[fclass='trunk']    { line-width: 1.4; }
  
  .line[fclass='primary']  { line-width: 1.2; }
  
  .line[fclass='secondary']{ line-width: 0.8; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified'] { line-width: 0.2; }
}

.roads[zoom=11] {
  .line[fclass='motorway']      { line-width: 1.0 + 1.8; }
  .fill[fclass='motorway']      { line-width: 1.0; }
  .line[fclass='trunk']         { line-width: 0.8 + 1.6; }
  .fill[fclass='trunk']         { line-width: 0.8; }
  .line[fclass='primary']       { line-width: 1.4; }
  .line[fclass='secondary']     { line-width: 1.0; }
  
  .line[fclass='motorway_link'] { line-width: 0.6; }
  .line[fclass='trunk_link']    { line-width: 0.5; }
  .line[fclass='primary_link']  { line-width: 0.4; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified'] { line-width: 0.4; }
}

.roads[zoom=12] {
  .line[fclass='motorway']      { line-width: 1.2 + 2; }
  .fill[fclass='motorway']      { line-width: 1.2; }
  .line[fclass='trunk']         { line-width: 1.0 + 1.8; }
  .fill[fclass='trunk']         { line-width: 1.0; }
  .line[fclass='primary']       { line-width: 0.8 + 1.6; }
  .fill[fclass='primary']       { line-width: 0.8; }
  .line[fclass='secondary']     { line-width: 0.8 + 1.6; }
  .fill[fclass='secondary']     { line-width: 0.8; }
  
  .line[fclass='motorway_link'] { line-width: 1.0 + 1.8; }
  .fill[fclass='motorway_link'] { line-width: 1.0; }
  .line[fclass='trunk_link']    { line-width: 0.8 + 1.6; }
  .fill[fclass='trunk_link']    { line-width: 0.8; }
  .line[fclass='primary_link']  { line-width: 0.8 + 1.6; }
  .fill[fclass='primary_link']  { line-width: 0.8; }
  .line[fclass='secondary_link']  { line-width: 0.8; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified']  { line-width: 0.6; }
}

.roads[zoom=13] {
  .line[fclass='motorway']      { line-width: 2.0 + 2; }
  .fill[fclass='motorway']      { line-width: 2.0; }
  .line[fclass='trunk']         { line-width: 1.4 + 2; }
  .fill[fclass='trunk']         { line-width: 1.4; }
  .line[fclass='primary']       { line-width: 1.2 + 2; }
  .fill[fclass='primary']       { line-width: 1.2; }
  .line[fclass='primary_link'],
  .line[fclass='secondary']     { line-width: 1.0 + 2; }
  .fill[fclass='primary_link'],
  .fill[fclass='secondary']     { line-width: 1.0; }
  
  .line[fclass='motorway_link'] { line-width: 1.0 + 2; }
  .fill[fclass='motorway_link'] { line-width: 1.0; }
  .line[fclass='trunk_link']    { line-width: 1.0 + 2; }
  .fill[fclass='trunk_link']    { line-width: 1.0; }
  .line[fclass='primary_link']  { line-width: 1.0 + 2; }
  .fill[fclass='primary_link']  { line-width: 1.0; }
  .line[fclass='secondary_link']{ line-width: 0.8; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified']  { line-width: 1.0; }
  .line[fclass='service']       { line-width: 0.5; }
  
  .line[fclass='track']         { line-width: 0.5; line-dasharray:2,3; }
}

.roads[zoom=14] {
  .line[fclass='motorway']      { line-width: 4 + 2; }
  .fill[fclass='motorway']      { line-width: 4; }
  .line[fclass='trunk']         { line-width: 3 + 2; }
  .fill[fclass='trunk']         { line-width: 3; }
  .line[fclass='primary']       { line-width: 2 + 2; }
  .fill[fclass='primary']       { line-width: 2; }
  .line[fclass='secondary']     { line-width: 2 + 2; }
  .fill[fclass='secondary']     { line-width: 2; }
  
  .line[fclass='motorway_link'] { line-width: 1.4 + 2; }
  .fill[fclass='motorway_link'] { line-width: 1.4; }
  .line[fclass='trunk_link']    { line-width: 1.2 + 2; }
  .fill[fclass='trunk_link']    { line-width: 1.2; }
  .line[fclass='primary_link']  { line-width: 1.0 + 2; }
  .fill[fclass='primary_link']  { line-width: 1.0; }
  .line[fclass='secondary_link']{ line-width: 0.8 + 2; }
  .fill[fclass='secondary_link']{ line-width: 0.8; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified']  { line-width: 1.6 + 1.6; }
  .fill[fclass='living_street'],
  .fill[fclass='residential'],
  .fill[fclass='road'],
  .fill[fclass='tertiary'],
  .fill[fclass='unclassified']  { line-width: 1.6; }
  .line[fclass='service']       { line-width: 0.6; }
  
  .line[fclass='track']         { line-width: 0.6; line-dasharray:2,3; }
  
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian'] {
    line-dasharray:1,2;
    line-width:0.6;
  }
}

.roads[zoom=15] {
  .line[fclass='motorway']      { line-width: 6 + 2; }
  .fill[fclass='motorway']      { line-width: 6; }
  .line[fclass='trunk']         { line-width: 5 + 2; }
  .fill[fclass='trunk']         { line-width: 5; }
  .line[fclass='primary']       { line-width: 4 + 2; }
  .fill[fclass='primary']       { line-width: 4; }
  .line[fclass='secondary']     { line-width: 4 + 2; }
  .fill[fclass='secondary']     { line-width: 4; }
  
  .line[fclass='motorway_link'] { line-width: 2 + 2; }
  .fill[fclass='motorway_link'] { line-width: 2; }
  .line[fclass='trunk_link']    { line-width: 1.6 + 2; }
  .fill[fclass='trunk_link']    { line-width: 1.6; }
  .line[fclass='primary_link']  { line-width: 1.4 + 2; }
  .fill[fclass='primary_link']  { line-width: 1.4; }
  .line[fclass='secondary_link']{ line-width: 1.0 + 2; }
  .fill[fclass='secondary_link']{ line-width: 1.0; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified']  { line-width: 4 + 2; }
  .fill[fclass='living_street'],
  .fill[fclass='residential'],
  .fill[fclass='road'],
  .fill[fclass='tertiary'],
  .fill[fclass='unclassified']  { line-width: 4; }
  .line[fclass='service']       { line-width: 1; }
  
  .line[fclass='track']         { line-width: 1; line-dasharray:2,3; }
  
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian'] {
    line-dasharray:1,2;
    line-width:0.8;
  }
}

.roads[zoom=16] {
  .line[fclass='motorway']      { line-width: 9 + 3; }
  .fill[fclass='motorway']      { line-width: 9; }
  .line[fclass='trunk']         { line-width: 8 + 2.5; }
  .fill[fclass='trunk']         { line-width: 8; }
  .line[fclass='primary']       { line-width: 7 + 2; }
  .fill[fclass='primary']       { line-width: 7; }
  .line[fclass='secondary']     { line-width: 6 + 2; }
  .fill[fclass='secondary']     { line-width: 6; }
  
  .line[fclass='motorway_link'] { line-width: 3 + 2.5; }
  .fill[fclass='motorway_link'] { line-width: 3; }
  .line[fclass='trunk_link']    { line-width: 2 + 2; }
  .fill[fclass='trunk_link']    { line-width: 2; }
  .line[fclass='primary_link']  { line-width: 1.8 + 2; }
  .fill[fclass='primary_link']  { line-width: 1.8; }
  .line[fclass='secondary_link']{ line-width: 1.4 + 2; }
  .fill[fclass='secondary_link']{ line-width: 1.4; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified']  { line-width: 6 + 2; }
  .fill[fclass='living_street'],
  .fill[fclass='residential'],
  .fill[fclass='road'],
  .fill[fclass='tertiary'],
  .fill[fclass='unclassified']  { line-width: 6; }
  .line[fclass='service']       { line-width: 1.4 + 2; }
  .fill[fclass='service']       { line-width: 1.4; }
  
  .line[fclass='track']         { line-width: 1.2; line-dasharray:2,3; }
  
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian'] {
    line-dasharray:1,2;
    line-width:1.0;
  }
}

.roads[zoom>=17] {
  .line[fclass='motorway']      { line-width: 13 + 3; }
  .fill[fclass='motorway']      { line-width: 13; }
  .line[fclass='trunk']         { line-width: 10 + 2.5; }
  .fill[fclass='trunk']         { line-width: 10; }
  .line[fclass='primary']       { line-width: 9 + 2; }
  .fill[fclass='primary']       { line-width: 9; }
  .line[fclass='secondary']     { line-width: 8 + 2; }
  .fill[fclass='secondary']     { line-width: 8; }
  
  .line[fclass='motorway_link'] { line-width: 4 + 2.5; }
  .fill[fclass='motorway_link'] { line-width: 4; }
  .line[fclass='trunk_link']    { line-width: 3.5 + 2; }
  .fill[fclass='trunk_link']    { line-width: 3.5; }
  .line[fclass='primary_link']  { line-width: 3 + 2; }
  .fill[fclass='primary_link']  { line-width: 3; }
  .line[fclass='secondary_link']{ line-width: 2.5 + 2; }
  .fill[fclass='secondary_link']{ line-width: 2.5; }
  
  .line[fclass='living_street'],
  .line[fclass='residential'],
  .line[fclass='road'],
  .line[fclass='tertiary'],
  .line[fclass='unclassified']  { line-width: 8 + 2; }
  .fill[fclass='living_street'],
  .fill[fclass='residential'],
  .fill[fclass='road'],
  .fill[fclass='tertiary'],
  .fill[fclass='unclassified']  { line-width: 8; }
  
  .line[fclass='service']       { line-width: 2 + 2; }
  .fill[fclass='service']       { line-width: 2; }
  
  .line[fclass='track']         { line-width: 1.4; line-dasharray:2,3; }
  
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian'],
   .line[fclass='steps']{
    line-dasharray:2,3;
    line-width:1.2;
     
  }
}



.roads[zoom=18] {
  .line[fclass='service']       { line-width: 6 + 2; }
  .fill[fclass='service']       { line-width: 6; }
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian'],
  .line[fclass='steps']{
    line-dasharray:2,3;
    line-width:2;
     
  }
}

/*---- bridges ---*/


.bridges[zoom>=16] {
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian']{  
   .line[bridge='T'] {line-width: 2 + 2; }
  }

  .fill[fclass='cycleway'],
  .fill[fclass='footway'],
  .fill[fclass='path'],
  .fill[fclass='pedestrian'] {
    .fill[bridge='T'] {line-width: 2; }
  }
}

.bridges[zoom=17] {
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian']{  
   .line[bridge='T'] {line-width: 3 + 2; }
  }

  .fill[fclass='cycleway'],
  .fill[fclass='footway'],
  .fill[fclass='path'],
  .fill[fclass='pedestrian'] {
    .fill[bridge='T'] {line-width: 3; }
  }
}

.bridges[zoom>17] {
  .line[fclass='cycleway'],
  .line[fclass='footway'],
  .line[fclass='path'],
  .line[fclass='pedestrian']{  
   .line[bridge='T'] {line-width: 4 + 2; }
  }

  .fill[fclass='cycleway'],
  .fill[fclass='footway'],
  .fill[fclass='path'],
  .fill[fclass='pedestrian'] {
    .fill[bridge='T'] {line-width: 4; }
  }
}

