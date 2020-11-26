A Kafka streams application is notified that an observation related to an attribute of an abstract feature in CityGML model is updated.

The required observation stream is queried from the observation database in the PostGIS cluster. The stream processor runs a database update query that updates the related value of the feature in the 3DCityDB database, that maintains the relational encoding of the CityGML model.

The required streams are also sinked via Kafka Connector to the Elastic Search and visualized with Kibana. The measurements info like summaries etc. can be viewed here.

Prometheus and Grafana shall be used to monitor the health of the Kafka streaming platform.
