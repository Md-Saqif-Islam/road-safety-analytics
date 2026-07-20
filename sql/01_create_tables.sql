DROP TABLE IF EXISTS fatalities_raw;

CREATE TABLE fatalities_raw (
    "Crash ID"                       varchar,
    "State"                          varchar,
    "Month"                          varchar,
    "Year"                           varchar,
    "Dayweek"                        varchar,
    "Time"                           varchar,
    "Crash Type"                     varchar,
    "Bus Involvement"                varchar,
    "Heavy Rigid Truck Involvement"  varchar,
    "Articulated Truck Involvement"  varchar,
    "Speed Limit"                    varchar,
    "Road User"                      varchar,
    "Gender"                         varchar,
    "Age"                            varchar,
    "National Remoteness Areas"      varchar,
    "SA4 Name 2021"                  varchar,
    "National LGA Name 2021"         varchar,
    "National Road Type"             varchar,
    "Christmas Period"               varchar,
    "Easter Period"                  varchar
);