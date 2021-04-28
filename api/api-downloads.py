import numpy as np
import os, json, random
import requests
import csv

minlat = 52.283098
maxlat = 52.425423
minlong = 4.739415
maxlong = 5.010542

minyear = 2016
maxyear = 2020

downloaded = []

index = 0

csvfile = open(f'metadata.csv', 'a')
writer_object = csv.writer(csvfile)

while index < 10000:
    lat = random.uniform(minlat, maxlat)
    long = random.uniform(minlong, maxlong)

    after_year = random.randint(minyear,maxyear)

    before_year = after_year + 1

    url = 'https://api.data.amsterdam.nl/panorama/panoramas/?timestamp_after='+str(after_year)+'-01-01&?timestamp_before='+str(before_year)+'-01-01&page=1&near=' + str(long)+ ',' + str(lat) +'&radius=100&surface_type=L'

    r = requests.get(url)
    results = r.json()

    image_coords = [(x['_links']['equirectangular_full']['href'],x['geometry']['coordinates'],x) for x in results['_embedded']['panoramas']]

    for image, coords, results in image_coords:

        if image in downloaded:
            break
        else:

            index += 1
            name = str(index)+'_'+'_'.join([str(x) for x in coords])+'.jpg'
            path = '/Users/owenwinter/Documents/GitHub/Road-Condition-Monitoring/api/' + name

            r = requests.get(image)

            file = open(path, "wb")
            file.write(r.content)
            file.close()

            downloaded.append(image)

            writer_object.writerow([index,image,coords,results])
