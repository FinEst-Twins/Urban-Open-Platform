## Kafka Schema Naming Convention (Aiven Karapace)

Example: `finest.open311`

| Project | Schema |
| --- | --- |
| FINEST | OPEN311 | 

Project options:
- **FINEST** FinEst Twins Smart City Centre of Excellence (H2020, 2019 - 2026)
- **FVH** Forum Virium Helsinki ongoing projects without link to a specific project
- **LIDO** City of Helsinki situational awareness for the traffic management
- **RAUNET** City of Helsinki facility management data integrations

Schema options:
- **STA** [OGC SensorThings API](https://www.ogc.org/standards/sensorthings) Open, geospatial enabled IoT standard
- **OPEN311** [Open311](https://www.open311.org/) Open standard for civic issue tracking
- **FIDELIX** Schema for Fidelix building automation systems (not public)
- **SCHNEIDER** Schema for Schneider Ecostruxure building automation systems (not public)
- **SENTILO** Schema for Cesva environmental noise sensors
- **CAMEL** Schema for Apache Camel integrations based on the connector

## Kafka Topic Naming Convention

Example: `finest.staging.sta.uc01.noise`

| Project | State | Schema | Use Case | Domain Tag |
| -------- | -------- | --- | ---- | -------- |
| FINEST | STAGING | STA | UC01 | NOISE |

State options:
- **STAGING** raw, incoming data that requires processing before utilized; a landing zone for new data
- **MAINTENANCE** data source currently in maintenance mode or malfunctioning, maintained for debugging purposes
- **PRODUCTION** prepared data stream passed through context enhancemend and data quality verifications

Schema options:
See schema naming convention above

### FinEst Twins Use Cases

| ID  | Title | Domain Tag |
| ------------- | ------------- | ------------- |
| UC0  | Unknown | NA  |
| UC1  | Noise Sensor | NOISE |
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

