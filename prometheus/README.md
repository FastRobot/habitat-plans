Habitat plan for Prometheus
======

Build a named release branch of prometheus from git, 
leveraging the promu compile utility to generate binaries
with the version number baked in.

Config
---

I plan on modeling most of the major sections in prometheus.yml with its equiv 
default.toml. scrapes to /federation will be switched on/off according to
if we are in the leader topology. 

Topologies
---

Standalone - runs prometheus with a templated config

Leader - self-federating. only the leader
 performs checks. The follower(s) will be responsible for larger persistent
  data storage and/or serving queries.  Optionally the other way around
  if I figure out a way to faithfully shard checks across follower nodes


multi node example
---
```shell
docker run -ti --rm -P --name prom0 fastrobot/prometheus --topology leader --group test
docker run -ti --rm -P --name prom1 --link prom0:peer_node fastrobot/grafana --topology leader --group test --peer peer_node
docker run -ti --rm -P --name prom1 --link prom0:peer_node fastrobot/grafana --topology leader --group test --peer peer_node
```

Discover targets using the hab ring
---
```
docker run -ti --rm -P --name prom0 fastrobot/prometheus --topology standalone --peer 172.17.0.3 --group demo --bind targets:node_exporter.demo

```