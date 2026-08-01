# helm-charts

A collection of Helm charts for self-hosted applications.

## Usage

To install a chart, use the following command:

```shell
helm install <release-name> oci://ghcr.io/trankimtung/helm-charts/<chart-name>
```

## Charts

| Chart                                   | Description                                                                   |
|-----------------------------------------|-------------------------------------------------------------------------------|
| [audiobookshelf](charts/audiobookshelf) | Audiobook and podcast server                                                  |
| [home-assistant](charts/home-assistant) | Home Assistant, with Mosquitto MQTT and Zigbee2MQTT                           |
| [mediarr](charts/mediarr)               | The \*arr suite (Prowlarr, Radarr, Sonarr, Lidarr, Bazarr, qBittorrent, FlareSolverr) |
| [navidrome](charts/navidrome)           | Music server and streamer                                                     |
| [paperless-ngx](charts/paperless-ngx)   | Document management system, with Valkey                                      |
| [pihole](charts/pihole)                 | DNS sinkhole and ad blocker, with Unbound and optional NebulaSync             |
| [romm](charts/romm)                     | ROM manager and browser-based game library                                   |
| [uptime-kuma](charts/uptime-kuma)       | Self-hosted uptime monitoring                                                 |

## License

[MIT](LICENSE)
