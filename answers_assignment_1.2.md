## Assignment 1.2 ##



### Aufgabe 2.1 ###

**n45_e013_1arc_v3**

WGS 84 EPSG 4326

Driver: GTiff/GeoTIFF

Origin: 12.999861111111111,46.000138888888884

Pixel Size: 0.000277777777778,-0.000277777777778

**N45E014.hgt**

WGS 84 EPSG 4326

Driver: SRTMHGT/SRTMHGT File Format

Origin: 13.999861111111111,46.000138888888891

Pixel Size: 0.000277777777778,-0.000277777777778



### Aufgabe 2.2 ###

Es handelt sich bei den Ausgabedateien um jeweils andere Formate. Bei der Ausgabedatei dem_merge.tif, um eine Tagged Image Files -Datei und bei der Ausgabedatei dem_buildvrt.vrt um eine Virtual World -Datei. Bei TIF handelt sich um ein Rasterbildformat, das in jeder Datei umfangreiche Metadaten speichert, ohne dabei großen Speicherplatz zu verbrauchen. VRT ist ein 3D-Format zum Erstellen interaktiver dreidimensionaler Welten und verbraucht, im Vergleich zu TIF, deutlich mehr Speicherplatz.

Bei gdalmerge werden eine Reihe von Bildern miteinander verschmolzen, um daraus ein Dataset zu mosaikieren. Alle Bilder müssen sich im selben Koordinatensystem befinden und eine übereinstimmende Anzahl von Bändern aufweisen. Sie können sich jedoch überlappen und unterschiedliche Auflösungen haben. In Überlappungsbereichen wird das letzte Bild über frühere kopiert.

Bei gdalbuildvrt wird ein Virtual Dataset erstellt, das einem Mosaik aus der Liste der eingegebenen GDAL-Datasets entspricht. Die Dateien werden als Kacheln in einem größeren Mosaik betrachtet und die VRT-Datei hat so viele Bänder wie eine der Eingabedateien. Die Dateien werden bei der Ausführung von gdalbuildvrt danach überprüft, ob sie den allgemeinen Eigenschaften (Anzahl der Bänder, Projektion, Farbinterpretation), die in die resultierende VRT eingefügt werden sollen, entsprechen. Wenn dies nicht der Fall sein sollte, werden solche Dateien übersprungen. Sollten sich Dateien räumlich überlappen, wird ihre Reihenfolge in der Liste der Quellenangaben angezeigt. Dateien, die am Ende gelistet sind, entsprechen denjenigen, aus denen der Inhalt abgerufen wird.

