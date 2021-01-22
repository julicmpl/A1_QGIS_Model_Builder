curl -X GET "https://api.ohsome.org/v1/elements/area?bboxes=8.642464,49.40092,8.704605,49.417674&format=json&time=2020-09-01&filter=amenity=hospital
{
  "attribution" : {
    "url" : "https://ohsome.org/copyrights",
    "text" : "┬⌐ OpenStreetMap contributors"
  },
  "apiVersion" : "1.3.0",
  "result" : [ {
    "timestamp" : "2020-09-01T00:00:00Z",
    "value" : 60163.18
  } ]


curl -X GET "https://api.ohsome.org/v1/elements/centroid?bboxes=8.642464,49.40092,8.704605,49.417674&filter=amenity=hospital&time=2020-09-01&properties=tags"
#finds the nearest hospital to each kindergarden

curl -X GET "https://api.ohsome.org/v1/elements/centroid?bboxes=8.642464,49.40092,8.704605,49.417674&filter=amenity=hospital&time=2020-09-01&properties=tags" --output hospital2.json
#saves data as .json file 

  % Total    % Received % Xferd  Average Speed   Time    Time     Time  Current
                                 Dload  Upload   Total   Spent    Left  Speed
100  6815    0  6815    0     0    973      0 --:--:--  0:00:07 --:--:--  1478


curl -X GET "https://api.ohsome.org/v1/elements/area?bboxes=8.642464,49.40092,8.704605,49.417674&format=json&time=2020-09-01&filter=amenity=kindergarten&properties=tags"

curl -X GET "https://api.ohsome.org/v1/elements/centroid?bboxes=8.642464,49.40092,8.704605,49.417674&filter=amenity=kindergarten&time=2020-09-01&properties=tags" --output kindergarten.json 


GRASS GIS:

v.distance from=kindergarten2@PERMANENT to=hospital2@PERMANENT upload=to_attr column=tohosp to_column=name 
#nearest hospital to kindergarten; upload=string: attribute of nearest feature given by to_column option

v.distance from=kindergarten2@PERMANENT to=hospital2@PERMANENT upload=dist column=dist to_column=xsnapshotTimestamp  
#distance between kindergarten and hospital

v.out.ogr -c --overwrite input=kindergarten2@PERMANENT type=point,auto output=C:\Users\Julia\Documents\MA\FOSS\Aufgabe_3\PERMANENT\Aufgabe_3\Kindergarten3 format=ESRI_Shapefile 
#extract new attribute table as shapefile

