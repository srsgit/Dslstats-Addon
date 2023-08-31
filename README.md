# Dslstats
Home Assistant Addon, packaging DSLstats to monitor DSL modem.

- Based on work of others to containerise DSLstats.
  - Docker rossallan/dslstats
- Original DSLstats (no longer maintained) http://dslstats.me.uk/
- added wrapper stuff for a local addon
  - Takes a very long time to build container in HA
  
Containerisation allowed move from a rPi3 to an x64 Home Assistant Addon.
- Snapshots are saved to /share/dslstats/snapshots once per hour
  - Snapshot files are parsed by a separate Addon to populate an InfluxDB
- DSLstats can be accessed via VND on port 5900
- Simple webserver exposes files on port 8080
- Inbuilt Webserver doesn't work
- Snapshot files are parsed by a separate Addon to populate an InfluxDB

Installing
- copy files to folder inside the HA addons folder
- install addon
- start addon
- connect addon with VNC
- configure DSLstats
  - configuration saved to HA /config/dslstats.ini

