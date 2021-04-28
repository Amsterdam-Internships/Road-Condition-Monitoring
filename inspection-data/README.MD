# Exploratory Data Analysis of Inspections Data

The inspection data includes 23,919 inspections undertaken on 11,112 separate stretches of asphalt road. The inspections are taken manually by Gemeente Amsterdam's Roads and Mobility Department according to the CROW guidelines [1].

The inspections data comes as a CSV with corresponding shapefiles for the stretches of roads inspected. Road section coverage and specificity are demonstrated below, with roads coloured by the year they were built:

![](https://github.com/Amsterdam-Internships/Road-Condition-Monitoring/blob/main/media/roads.gif)

The road section dataset includes the following variables:

| Variable  | Description | Summary |
| ------------- | ------------- | ------------- |
| GUID | Unique road segment identifier  | N/A  |
| OBJECTTYPE  | Type of shapefile | Road segment - 11,112 |
| TYPE  | Type of road surface | Asphalt - 11,112 |
| TYPE_GEDET  | First sub-type of road surface | Dense graded - 10,458 |
|   |  | Surface treatment - 452 |
|   |  | Open/porous - 201 |
| TYPE_EXTRA  | Second sub-type of road surface | Asphalt concrete - 8,167 |
|   |  | Stone mastic asphalt - 2,207 |
|   |  | Surface treatment - 452 |
|   |  | Thin noise reducing coating - 137 |
|   |  | Asphalt concrete thin layer - 44 |
|   |  | Combination coating - 37 |
|   |  | Stone mastic asphalt (8G+) - 29 |
|   |  | Emulsion asphalt concrete - 2 |
|   |  | Gravel asphalt concrete - 1 |
| KLEUR | Colour | Grey - 10,550 |
|   |  | Red - 562 |
| JAAR_VAN_A | Year built | Minimum - 1901 |
|  |  | Median - 1990 |
|  |  | Max - 2020 |
|  |  | NAs - 40 |
| JAAR_LAATS | Year ?? | Minimum - 1960 |
|  |  | Median - 2005 |
|  |  | Max - 2019 |
|  |  | NAs - 9,102 |
| JAAR_UITGE | Year ?? | Minimum - 1960 |
|  |  | Median - 2005 |
|  |  | Max - 2020 |
|  |  | NAs - 4,367 |
| OPPERVLAKT | Surface Area | Minimum - 0.059 |
|  |  | Median - 418.354 |
|  |  | Max - 28821.762 |
| GEBRUIKSFU  | Road usage | Roadway - 11,112 |
| TYPE_RIJST  | Type of lane | NAs - 10,644 |
| | | Cycle lane - 464 |
| | | Additional lane - 2 |
| | | Sloping lane - 1 |
| | | Lane - 1 |
| WEGTYPE_BE  | Type of road | Average Road Traffic - 3,705 |
| | | Road in residential area - 3,198 |
| | | Heavy duty road - 2,838 |
| | | Lightly loaded road - 1,362 |
| | | Cycle paths - 8 |
| | | Road in residential are (mislabeled?) - 6 |
| OPENBARE_R  | Street name | NAs - 790 |
| BEHEERDER  | Road Management | NAs - 75 |

![](https://github.com/Amsterdam-Internships/Road-Condition-Monitoring/blob/main/media/road-construction-year-hist.jpeg)

The inspections dataset includes the following variables:

| Variable  | Description | Summary |
| ------------- | ------------- | ------------- |
| Verhardingsobject.Guid | Unique road segment identifier  | N/A  |
| Datum  | Date of inspection  | Minimum = 2014-01-01  |
|   |   | Maximum = 2020-02-18  |
| Inspecterende.organisatie  | Inspecting organisation | NAs = 23,919  |
| Dwarsonvlakheid  | Transverse Unevenness | G (no significant damage) - 22,898  |
|   |  | L1 (mild damage, less than 5m) - 390  |
|   |  | L2 (mild damage, 5-15m) - 193  |
|   |  | L3 (mild damage, 15-35m) - 118  |
|   |  | M1 (moderate damage, less than 5m) - 91  |
|   |  | NAs - 87  |
|   |  | E1 (severe damage, less than 5m) - 69  |
|   |  | M2 (moderate damage, 5-15m) - 38  |
|   |  | M3 (moderate damage, 15-35m) - 20  |
|   |  | E2 (severe damage, 5-15m) - 9  |
|   |  | E3 (severe damage, 15-35m) - 6  |
| Langsonvlakheid  | Longitudinal Flatness | NAs - 23,919  |
| Langsonvlakheid  | Unevenness | NAs - 23,919  |


![](https://github.com/Amsterdam-Internships/Road-Condition-Monitoring/blob/main/media/inspection-date-hist.jpeg)

[1] CROW (2011) ‘Handleiding globale visuele inspectie’ https://www.crow.nl/publicaties/handleiding-globale-visuele-inspectie-2011
