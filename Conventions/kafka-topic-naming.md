## Kafka Topic Naming Convention

### SensorThings Datastreams

| Project | State | Use Case | Domain |
| -------- | -------- |  ---- | -------- |
| FINEST | STAGING | UC01 | NOISE |

State options:
- STAGING raw, incoming data that requires processing before utilized; a landing zone for new data
- MAINTENANCE data source currently in maintenance mode or malfunctioning
- PRODUCTION prepared data stream passed through context enhancemend and data quality verifications

### Finest Twins Use Cases


| ID | Title | Tag |
| ----- | ------- | ----- |
| UC1 | Noise Sensor | NOISE |
| UC2 | Smart Home | LORAWAN |
| UC3 | Solar Panel | SOLAR |
| UC4 | Street Lighting | STREETLIGHT |
| UC5 | EV Charging | EV |
| UC6 | People Counter | PEOPLECOUNTER |
| UC7 | Moving Vehicle | TELEMETRY |
| UC8 | Building Automation Systems | BAS |
| UC9 | Dynamic Attributes | CITYGML |
| UC10 | Natural Language Processing | NLP |
| UC11 | Weather Station | WEATHER |

