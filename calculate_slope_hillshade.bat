C:\Users\Julia\Documents\MA\FOSS\Aufgabe 2>gdal_merge -o dem_merge.tif N45E014.hgt n45_e013_1arc_v3.tif
C:\Users\Julia\Documents\MA\FOSS\Aufgabe 2>gdalbuildvrt -separate dem_buildvrt.vrt N45E014.hgt n45_e013_1arc_v3.tif
C:\Users\Julia\Documents\MA\FOSS\Aufgabe 2>ogr2ogr -clipsrcwhere "NAME_2="Izola"" -f "ESRI Shapefile" Izola.shp gadm36_SVN.gpkg gadm36_SVN_2
C:\Users\Julia\Documents\MA\FOSS\Aufgabe 2>gdalwarp -dstnodata -9999 -t_srs EPSG:32632 -cutline Izola.shp -crop_to_cutline dem_merge.tif dem_merge_clip_Izola.tif
C:\Users\Julia\Documents\MA\FOSS\Aufgabe 2>gdaldem slope dem_merge_clip_Izola.tif slope.tif -p
C:\Users\Julia\Documents\MA\FOSS\Aufgabe 2>gdaldem hillshade dem_merge_clip_Izola.tif hillshade.tif
