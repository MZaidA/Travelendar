/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     17/12/2017 22:13:19                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists USER;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null auto_increment,
   USERNAME             varchar(30) not null,
   EVENT_NAME           varchar(30) not null,
   START_TIME           datetime not null,
   END_TIME             datetime,
   DEPARTURE_TIME       datetime not null,
   DEPARTURE_LOCATION   varchar(150) not null,
   DEPARTURE_LAT        float,
   DEPARTURE_LNG        float,
   EVENT_LOCATION       varchar(150) not null,
   EVENT_LNG            float,
   EVENT_LAT            float,
   TRAVEL_MODE          varchar(10) not null,
   AVOID_TOLLS          bool,
   SUMMARY              varchar(150) not null,
   primary key (EVENT_ID)
)
auto_increment = 1;

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   USERNAME             varchar(30) not null,
   PASSWORD             varchar(20) not null,
   primary key (USERNAME)
);

alter table EVENT add constraint FK_HAS foreign key (USERNAME)
      references USER (USERNAME) on delete restrict on update restrict;

