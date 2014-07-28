(C) 2014 Martin Wawrusch

Exposes a /status route which returns a json object similar to this:

```json
{
  running: true,
  uptime: 12,
  memoryUsage: {
    rss: 57384960,
    heapTotal: 56160000,
    heapUsed: 19359568
  },
  versions: {
    http_parser: "1.0",
    node: "0.10.22",
    v8: "3.14.5.9",
    ares: "1.9.0-DEV",
    uv: "0.10.19",
    zlib: "1.2.3",
    modules: "11",
    openssl: "1.0.1e"
  },
  droneId: 41309
}
```

