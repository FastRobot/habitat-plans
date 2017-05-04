Habitat.sh plans by Fast Robot, LLC
=====

What?
----

All our habitat.sh plans, jumbled into one repo!

Usage
----

1) clone this repo
2) install the hab binary from https://habitat.sh
3) 
```
hab studio build grafana
hab pkg docker export fastrobot/grafana
docker run -p 3000:3000 --name fr_grafana fastrobot/grafana
```
