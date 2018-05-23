
@font_reg: "Calibri","DejaVu Sans Book";
@font_serif: "Cambria Regular","Georgia";

#road-labels {
  text-face-name:@font_reg;
  text-halo-radius:1;
  text-placement:line;
  text-name:"''";
  [fclass='motorway'][zoom>=12] {
    text-name:"[name]";
    text-fill:spin(darken(@motorway,70),-15);
    text-halo-fill:lighten(@motorway,8);
    [zoom>=13] { text-size:11; }
    [zoom>=15] { text-size:12; }
  }
  [fclass='trunk'][zoom>=12] {
    text-name:"[name]";
    text-fill:spin(darken(@trunk,70),-15);
    text-halo-fill:lighten(@trunk,8);
    [zoom>=15] { text-size:11; }
  }
  [fclass='primary'][zoom>=13] {
    text-name:"[name]";
    text-fill:spin(darken(@primary,70),-15);
    text-halo-fill:lighten(@primary,8);
    [zoom>=15] { text-size:11; }
  }
  [fclass='secondary'][zoom>=13] {
    text-name:"[name]";
    text-fill:spin(darken(@secondary,70),-15);
    text-halo-fill:lighten(@secondary,8);
    [zoom>=15] { text-size:11; }
  }
  [fclass='residential'][zoom>=15],
  [fclass='road'][zoom>=15],
  [fclass='tertiary'][zoom>=15],
  [fclass='unclassified'][zoom>=15] {
    text-name:"[name]";
    text-fill:#444;
    text-halo-fill:#fff;
  
  }
  [fclass='service'][zoom>=18]{
    text-name:"[name]";
    text-fill:#444;
    text-halo-fill:#fff;
  }
   
  
}


#traffic-points::busesonly[osm_id="566366386"][zoom>=16]{
  
   text-allow-overlap:true; 
    text-face-name:@font_reg;
    
    text-fill:#138bb7;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
    text-name:"'Buses only'"; 
   //text-name:"[osm_id]"; 
    text-size:10; 
   	[zoom>=17] {
      	text-size:11; 
      }
  }
 
#traffic-points::busesonly[osm_id="3561854327"][zoom>=16]{

   text-allow-overlap:true; 
    text-face-name:@font_reg;
    
    text-fill:#138bb7;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
  text-name:"'Permit holders only'"; 
  // text-name:"[osm_id]"; 
    text-size:10; 
  	[zoom>=17] {
      	text-name:"'Annual Car Park Permit holders only'"; 
    	text-size:11; 
     	text-wrap-width:45;
      }
   
  }
 /*#traffic-points::IDS[zoom>=16]{

   text-allow-overlap:true; 
    text-face-name:@font_reg;
    
    text-fill:#138bb7;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
  
   text-name:"[osm_id]"; 
    text-size:10; 
  	[zoom>=17] {
      	 text-name:"[osm_id]"; 
    	text-size:11; 
     	text-wrap-width:45;
      }
   
  }*/



/*Need to decide which areas/buildings to show at which zoom levels*/

#building-labels-new, #places-areas {
   text-face-name:@font_reg;
  text-name:"''";
  }


#places-areas [zoom>17]{
  text-allow-overlap:false; 
  text-face-name:@font_reg;
  text-name:"[name]";
  text-fill:#000;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2;
  
  text-size:10; 
  text-wrap-width:70;

}

#building-labels-new[zoom>16], #landuse[fclass='brownfield'][zoom>16],#landuse[zoom>16][fclass='construction']{
  text-allow-overlap:false; 
  text-face-name:@font_reg;
  text-name:"[name]";
  text-fill:#000;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2;
  text-size:10; 
  text-wrap-width:60;

}

#building-labels-new[zoom>17] {
  text-size:11; 
}

/*Example of a 'main' building to show at lower zoom levels*/
#building-labels-new [zoom=16] {
  [name="Central Hall"],
  [name="Heslington Hall"],
    {
    text-allow-overlap:false; 
    text-face-name:@font_reg;
    text-name:"[name]";
    text-fill:#000;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
    text-size:11; 
    text-wrap-width:100;
  }
}

#places-areas[zoom>=16] {
  [name="Alcuin College"],
  [name="Constantine College"],
  [name="Derwent College"],
  [name="Goodricke College"],
  [name="Halifax College"],
  [name="James College"],
  [name="Langwith College"],
  [name="Vanbrugh College"],
  [name="Wentworth College"],
    [name="Eden's Court"],

     {
    text-allow-overlap:true; 
    text-face-name:@font_reg;
    text-name:"[name]";
    text-fill:#000;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
    text-size:11; 
    
    text-wrap-width:100;
  }
  
}

#places-areas[zoom>=17] {
     [name="Astrocampus"],
     {
    text-allow-overlap:true; 
    text-face-name:@font_reg;
    text-name:"[name]";
    text-fill:#000;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
    text-size:11; 
    text-wrap-width:100;
  }
  
}

#places-areas[zoom>=17] {
  [name="Alcuin College"],
  [name="Constantine College"],
  [name="Derwent College"],
  [name="Goodricke College"],
  [name="Halifax College"],
  [name="James College"],
  [name="Langwith College"],
  [name="Vanbrugh College"],
  [name="Wentworth College"],
    [name="Eden's Court"],
 
     {
   text-fill:#333; 
    text-halo-fill:rgba(255,255,255,0.4);
    text-size:12; 
    text-transform:uppercase; 
    text-character-spacing:5; 
  }
  
}


#places-areas[zoom=18] {
  [name="Alcuin College"],
  [name="Constantine College"],
  [name="Derwent College"],
  [name="Goodricke College"],
  [name="Halifax College"],
  [name="James College"],
  [name="Langwith College"],
  [name="Vanbrugh College"],
  [name="Wentworth College"],
    
     {
  
    text-size:16; 
      text-character-spacing:10; 
  
  }
  	
  
}

/*Manual adjustment to stop label collision with Z Block*/
#building-labels-new[zoom=18] {
  [name="Electronic Engineering"]
     { 
    text-dy:-15;
  }  
}

/*Excluded place labels*/
#places-areas {
  [name="University of York: Heslington East Campus"],
  [name="Vanbrugh College (New Blocks)"],   
    {
     text-name:"''";
  	}
}

/*Excluded building labels*/

#building-labels-new {
  [name="Alcuin College"],
  [name="Constantine College"],
  [name="Derwent College"],
  [name="Goodricke College"],
  [name="Halifax College"],
  [name="James College"],
  [name="James Block E"],
  [name="Langwith College"],
  [name="Vanbrugh College"],
  [name="Wentworth College"],
  [name="TFTV substation"],
  [name="Data Centre"],
  [name="Robot Lab"],
  [name="York University Baird Lane Sewage Pumping Statio"],
    
    
    	{
    		 text-name:"''";
    	}
  	[name="Goodricke Nucleus"],
	[name="Janet Baker Court"],
    [name="Langwith Centre Building"],
    [name="The Forum, Constantine College"],
    [name="St. Lawrence Court"],
    [name="Electronic Engineering Z Block"],
    [name="James Block P"],
    [name="James Block Q"],
    [name="Electronic Engineering P Cabin"],
    [name="Observatory"],
    [name="Astrocapsule"],
    [name="Houses C & D"],
    [name="Houses A & B"],
    [name="Houses E, F, G and H"],
    [name="Spring Barn Cottage"],
    [name="Cherrytree Cottages"],
    {
    		[zoom=17] {
      			text-name:"''";
      		}
    	}

}



/*-------Car parks-------*/


#traffic-points::text[fclass="parking"] [zoom>17]{
  text-allow-overlap:true; 
  text-face-name:@font_reg;
  text-name:"[name]";
  text-fill:#333;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2;
  
  text-size:10; 
  text-wrap-width:70;
  
  
  [name="Langwith Reception"] {   text-name:"''"; 	}
  [name="Biology Two Cart Park"] {   text-name:"'Biology Two Car Park'"; 	}
  
  }

/*
#traffic-points::icons {
  [fclass='parking'], [fclass='parking_site'] {
   
    

	[zoom=16] {
      	[name='Campus Central Car Park'],[name='Information Centre Car Park'],[name='Campus North'],[name='Car Park G'],[name='Campus South Car Park'],[name='Campus West'],[name='Field Lane Car Park'],[name='Kimberlow Lane Car Park']{
  		
        point-file:url('icons/parking-18.png');
        
        }
 	 }
 	 [zoom=17] {
  		point-file:url(icons/parking-18.png); 
 	 }
 	 [zoom=18] {
  		

      	/shield-file:url('icons/parking-24.png'); 
        shield-face-name:@font_reg;
      	shield-dy:-10; 
      	
 	 }

    
    	
	}
}*/




/*-------Bus stops-------*/
/*Removed because we’re now showing bus stops as pins*/
  /*
#transport[fclass='bus_stop']{
[zoom=16] {
  	point-file:url(../maki/bus-12.png); 
  }
  [zoom=17] {
  	point-file:url('icons/bus-blue-12.png'); 
  }
  [zoom=18] {
  	point-file:url('icons/bus-blue-18.png'); 
  }

}
*/


/*Missing labels for biology and physics*/


#buildingsnew::missing[zoom>16] {
  text-name:"''"; 
  /*Use osm_id as the value of text-name to see the ID of the building*/
  /*text-name:"[osm_id]"; */
  text-allow-overlap:true; 
  text-face-name:@font_reg;
  text-fill:#000;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2;
  text-size:10; 
  text-wrap-width:60;
  
  [osm_id=933949]{ 	text-name:"'Department of Biology'";  }
  [osm_id=2371619]{ text-name:"'Physics'"; }
}


/*Points of interest*/
#building-labels-new {
  	[osm_id='28750371'], /*York Minster*/
    [osm_id='88112328'] /*Railway station - appears as ‘York'*/
    {
    	[zoom<=16] {
		  text-allow-overlap:false; 
          text-face-name:@font_reg;
          text-name:"[name]";
          text-fill:#000;
          text-halo-fill:rgba(255,255,255,0.5);
          text-halo-radius:2;
          text-size:10; 
          text-wrap-width:20;
    }
  }
}

/*Manually change name of station from ‘York’ to ‘Railway Station'*/
#building-labels-new [osm_id='88112328'][zoom<=18] {
	text-name:"'Railway Station'";
}

/*Villages*/
#places[fclass='village'] {
  text-allow-overlap:false; 
  text-face-name:@font_reg;
  text-name:"[name]";
  text-fill:#000;
  text-halo-fill:rgba(255,255,255,0.5);
  text-halo-radius:2;
  text-size:10; 
  text-wrap-width:70;
}

/*Campus labels*/

#campus-labels{
  text-face-name:@font_serif;
  text-allow-overlap:true; 
  text-name:"[Name]";
  text-fill:#000;
  text-halo-fill:rgba(255,255,255,0.8);
  text-halo-radius:2;
  text-size:12; 

}
#campus-labels[zoom=14] {
	text-size:18;
}

#campus-labels[zoom=15] {
  text-size:24;
    text-halo-fill:rgba(255,255,255,0.8);

}

#campus-labels[zoom>=16] {
  text-transform:uppercase;
  text-size:28;
  text-character-spacing:10;
  text-halo-fill:rgba(255,255,255,0.4);
  text-fill:rgba(0,0,0,0.6);
}
#campus-labels[zoom=17] {
  text-size:32;
  text-character-spacing:20;
  text-wrap-width:120;
}

#campus-labels[zoom=18] {
  text-size:50;
  text-character-spacing:20;
  text-wrap-width:150;
}


#points[fclass='university'][name="University of York Kings Manor"]{
  
    text-allow-overlap:true; 
    text-face-name:@font_reg;
    text-name:"'King‘s Manor'";
    text-fill:#000;
    text-halo-fill:rgba(255,255,255,0.8);
    text-halo-radius:2;
    text-size:11; 
    text-wrap-width:100;
  [zoom<=16] {
    text-wrap-width:25;
        text-size:10; 
    }
  [zoom>=17] {
    text-name:"''";
    }
  }


/*Debug - show ID*/
/*
#building-labels-new[zoom>=15] {
		  text-allow-overlap:true; 
          text-face-name:@font_reg;
          text-name:"[name]";

          text-fill:#f00; 
          text-halo-fill:rgba(255,255,255,0.5);
          text-halo-radius:2;
          text-size:10; 
          text-wrap-width:70;
  
}
*/
                                                                                                                                                                                                                                                                                                                                                              