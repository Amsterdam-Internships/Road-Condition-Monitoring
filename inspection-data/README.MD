# Exploratory Data Analysis of Inspections Data

The inspection data includes 23,919 inspections undertaken on 11,112 separate stretches of asphalt road. The inspections are taken manually by Gemeente Amsterdam's Roads and Mobility Department according to the CROW guidelines [1].

The inspections data comes as a CSV with corresponding shapefiles for the stretches of roads inspected. Road section coverage and specificity are demonstrated below, with roads coloured by the year they were built:

![](media/roads.gif)

The road section dataset includes the following variables:

| Variable  | Description | Summary statistics |
| ------------- | ------------- | ------------- |
| GUID | Unique road segment identifier  | NA  |
| OBJECTTYPE  | Type of shapefile | All road segment  |
| TYPE  | Type of road surface | All asphalt |
| TYPE_GEDET  | Sub-type of road surface | Dense graded - 10,458, Surface treatment - 452, Open/porous - 201 |



[1] CROW (2011) ‘Handleiding globale visuele inspectie’ https://www.crow.nl/publicaties/handleiding-globale-visuele-inspectie-2011
