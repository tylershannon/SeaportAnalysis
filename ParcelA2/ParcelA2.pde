import org.gicentre.geomap.*;
import org.gicentre.geomap.io.*;

import org.gicentre.utils.spatial.*;


JSONArray json;
String a;
float lat, lng;
GeoMap geoMap;


void setup() {
  size(800, 500);
  background(0,0,0);
  json = loadJSONArray("data.json");
  JSONObject venue = json.getJSONObject(0);
  JSONObject coordinates = venue.getJSONObject("coordinates");
  lat = coordinates.getFloat("lat");
  lng = coordinates.getFloat("lng");
  
  print(lat);
  print(lng);
  
  geoMap = new GeoMap(-2300,-900,width*6, height*8, this);
  geoMap.readFile("Boston_Neighborhoods");

}


void draw() {
  
  geoMap.draw();

  ellipse(lat, height+lng, 100,100);

}