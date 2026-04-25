# helm-charts

A collection of Helm charts for self-hosted applications.

## Usage

To install a chart, use the following command:

```shell
helm install <release-name> oci://ghcr.io/trankimtung/helm-charts/<chart-name>
```

## Charts

| Chart                                   | Description                                                               | Version |
| --------------------------------------- | ------------------------------------------------------------------------- | ------- |
| [audiobookshelf](charts/audiobookshelf) | Audiobook and podcast server                                              | 0.5.0   |
| [navidrome](charts/navidrome)           | Music server and streamer                                                 | 0.3.0   |
| [pihole](charts/pihole)                 | DNS sinkhole and ad blocker, with Unbound and optional NebulaSync support | 0.1.1   |
| [uptime-kuma](charts/uptime-kuma)       | Monitoring tool                                                           | 0.3.0   |

## License

[MIT](LICENSE)
