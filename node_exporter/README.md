Habitat plan for Prometheus's node exporter
======

Downloads a tarball for a released branch of node_exporter, compiles and runs it

Config
---
 
Joining this process to a group with a prometheus running should cause the
prometheus to start automatically scraping this.

Running
---

As noted by the node_exporter readme, this isn't normally run from
docker, so if you do, you'll want to run with some of the following options:

```
docker run -d -p 9100:9100 \
  -v "/proc:/host/proc" \
  -v "/sys:/host/sys" \
  -v "/:/rootfs" \
  --net="host" \
  fastrobt/node_exporter \
  -collector.procfs /host/proc \
  -collector.sysfs /host/sys \
  -collector.filesystem.ignored-mount-points "^/(sys|proc|dev|host|etc)($|/)"
```

Room for Improvement
---

Currently the list of plugins run by node_exporter is static, normally they
are switched off and on at runtime. Those should probably be exposed as 
config via toml so that you could enable the plugins dynamically.
