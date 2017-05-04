Grafana in habitat.sh
====


Example Usage
----

1) clone this repo
2) install the hab binary from https://habitat.sh
3) Run these commands:
```
hab studio enter # stay in studio
 build grafana
 hab pkg export docker <yourOrg>/grafana
 # exit studio
docker run -p 3000:3000 --name my_grafana <yourOrg>/grafana
```