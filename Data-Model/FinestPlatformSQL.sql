/* ---------------------------------------------------- */
/*  Generated by Enterprise Architect Version 15.1 		*/
/*  Created On : 12-Mar-2020 11.37.43 				*/
/*  DBMS       : PostgreSQL 						*/
/* ---------------------------------------------------- */

/* Drop Sequences for Autonumber Columns */





/* Drop Tables */

DROP TABLE IF EXISTS datastream CASCADE
;

DROP TABLE IF EXISTS featureofintrest CASCADE
;

DROP TABLE IF EXISTS historicallocation CASCADE
;

DROP TABLE IF EXISTS location CASCADE
;

DROP TABLE IF EXISTS observation CASCADE
;

DROP TABLE IF EXISTS observedproperty CASCADE
;

DROP TABLE IF EXISTS sensor CASCADE
;

DROP TABLE IF EXISTS thing CASCADE
;

DROP TABLE IF EXISTS thingstolocation CASCADE
;

/* Create Tables */

CREATE TABLE datastream
(
	id bigserial NOT NULL,
	name text NULL,
	description text NULL,
	observationtype text NULL,
	unitofmeasurement text NULL,
	observedarea geometry(polygon) NULL,
	phenomenontime_begin timestamp without time zone NULL,
	phenomenontime_end timestamp without time zone NULL,
	resulttime_begin timestamp without time zone NULL,
	resulttime_end timestamp without time zone NULL,
	sensor_link text NULL,
	thing_link text NULL,
	observedproperty_link text NULL
)
;

CREATE TABLE featureofintrest
(
	link text NOT NULL
)
;

CREATE TABLE historicallocation
(
	time timestamp without time zone NULL,
	location_link text NULL,
	thing_link text NULL
)
;

CREATE TABLE location
(
	link text NOT NULL
)
;

CREATE TABLE observation
(
	id bigserial NOT NULL,
	phenomenontime_begin timestamp without time zone NULL,
	phenomenontime_end timestamp without time zone NULL,
	resulttime timestamp without time zone NULL,
	result text NULL,
	resultquality JSON NULL,
	validtime_begin timestamp without time zone NULL,
	validtime_end timestamp without time zone NULL,
	parameters text NULL,
	datastream_id bigint NULL,
	featureofintrest_link text NULL
)
;

CREATE TABLE observedproperty
(
	link text NOT NULL
)
;

CREATE TABLE sensor
(
	link text NOT NULL
)
;

CREATE TABLE thing
(
	link text NOT NULL
)
;

CREATE TABLE thingstolocation
(
	thing_link text NOT NULL,
	location_link text NOT NULL
)
;

/* Create Primary Keys, Indexes, Uniques, Checks */

ALTER TABLE datastream ADD CONSTRAINT "PK_datastream"
	PRIMARY KEY (id)
;

ALTER TABLE observation ADD CONSTRAINT "PK_observation"
	PRIMARY KEY (id)
;

/* Create Table Comments, Sequences for Autonumber Columns */
