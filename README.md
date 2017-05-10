habitat.sh plans by Fast Robot, LLC
=====

What?
----

All our habitat.sh plans, jumbled into one repo!

I'm sure we'll sort them out, or move some to core

Example Usage
----

1) clone this repo
2) install the hab binary from https://habitat.sh
3) Run these commands:
```
hab studio -k <yourOrg>/enter # stay in studio
 build grafana
 hab pkg export docker <yourOrg>/grafana
 # exit studio
docker run -p 3000:3000 --name my_grafana <yourOrg>/grafana
```
