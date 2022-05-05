Quick links: [Kafka Schema](#kafka-schema-naming-convention) | 
[Kafka Topic](#kafka-topic-naming-convention) | 
[Feature Collections](#ogc-api-features-collection-naming-convention) | 
[Use Cases](#use-cases)


## Kafka Schema Naming Convention

Example: `fvh.open311`

| Project | Schema |
| --- | --- |
| FVH | OPEN311 | 

Project options:
- **FINEST** FinEst Twins Smart City Centre of Excellence (H2020, 2019 - 2026)
- **FVH** Forum Virium Helsinki ongoing projects without link to a specific project
- **LIDO** City of Helsinki situational awareness for the traffic management
- **RAUNET** City of Helsinki facility management data integrations

Schema options:
- **STA** [OGC SensorThings API](https://www.ogc.org/standards/sensorthings) Open, geospatial enabled IoT standard
- **OPEN311** [Open311](https://www.open311.org/) Open standard for civic issue tracking, including [CitySDK extensions](https://dev.hel.fi/apis/open311)
- **FIDELIX** Schema for Fidelix building automation systems (not public)
- **SCHNEIDER** Schema for Schneider Ecostruxure building automation systems (not public)
- **SENTILO** Schema for Cesva environmental noise sensors
- **CAMEL** Schema for Apache Camel integrations based on the connector
- **THINGPARK** Schema for Digita Thingpark service for LoRaWAN sensors
- **SNMP** Schema for SNMP trap messages from Camel

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

Use case and Domain Tag:
See [Use Cases](#finest-twins-use-cases)

## OGC API Features Collection Naming Convention

Example: `Sensor Sites`

Features in Collections may contain specific set of attributes as part of the properties element:

| Collection | Property Attributes Schema |
| --- | --- |
| Sensor Sites | sensorProperties | 

### Property Attribute Schemas

**sensorProperties**
| Property | Description |
| --- | --- |
| id | Operational ID of the sensor site | 


## Use Cases

| ID  | Title | Vendor | Protocol | Domain Tag |
| ------------- | ------------- | ------------- | ---------- | ---------- |
| UC0  | Unknown | NA  | | NA |
| UC1  | Noise Sensor | Cesva | Sentilo | NOISE |
| UC2 | Smart Home | Elsys |  | HOME |
| UC3 | Solar Panel | Custom |  | SOLAR |
| UC4 | Street Lighting | C2 | | STREETLIGHT |
| UC5 | EV Charging | EKO | PLUGIT | EV |
| UC6 | People Counter | Axis | | PEOPLECOUNTER |
| UC7 | Moving Vehicle | Wapice | | TELEMETRY |
| UC8 | Building Automation Systems | Fidelix | |  BAS |
| UC9 | Dynamic Attributes | NA | NA | CITYGML |
| UC10 | Natural Language Processing | NA | NA |  NLP |
| UC11 | Weather Station | TBD | | WEATHER |
| UC12 | Energy Meters | Helen | | ENERGY |
| UC13 | LoRaWAN | Digita Thingpark | | LORA |
| UC14 | Traffic Alert | IoT-NGIN | | TMC |
| UC15 | Property Issue Tracker | N/A | Open311 | RAUNET-ALERT |
