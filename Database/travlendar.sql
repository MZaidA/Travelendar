/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     05/12/2017 10:27:20                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists LOCATION;

drop table if exists TRANSPORTATION;

drop table if exists TRAVEL;

drop table if exists USER;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null,
   EMAIL                varchar(40) not null,
   TRANSPORTATION_NAME  varchar(20) not null,
   DESTINATION          varchar(40) not null,
   ORIGIN               varchar(40) not null,
   EVENT_NAME           varchar(40) not null,
   primary key (EVENT_ID)
);

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION
(
   LOCATION_NAME        varchar(40) not null,
   LAT                  float not null,
   LNG                  float not null,
   primary key (LOCATION_NAME)
);

/*==============================================================*/
/* Table: TRANSPORTATION                                        */
/*==============================================================*/
create table TRANSPORTATION
(
   TRANSPORTATION_NAME  varchar(20) not null,
   TRAVEL_MODE          varchar(10) not null,
   TRANSIT_MODE         varchar(10),
   AVOID_TOLLS          bool,
   primary key (TRANSPORTATION_NAME)
);

/*==============================================================*/
/* Table: TRAVEL                                                */
/*==============================================================*/
create table TRAVEL
(
   TRANSPORTATION_NAME  varchar(20) not null,
   DESTINATION          varchar(40) not null,
   ORIGIN               varchar(40) not null,
   DEPARTURE_TIME       datetime not null,
   ARRIVAL_TIME         datetime not null,
   EVENT_END            datetime not null,
   primary key (TRANSPORTATION_NAME, DESTINATION, ORIGIN)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   EMAIL                varchar(40) not null,
   PASSWORD             varchar(20) not null,
   primary key (EMAIL)
);

alter table EVENT add constraint FK_HAS foreign key (EMAIL)
      references USER (EMAIL) on delete restrict on update restrict;

alter table EVENT add constraint FK_RELATIONSHIP_5 foreign key (TRANSPORTATION_NAME, DESTINATION, ORIGIN)
      references TRAVEL (TRANSPORTATION_NAME, DESTINATION, ORIGIN) on delete restrict on update restrict;

alter table TRAVEL add constraint FK_DESTINATION foreign key (ORIGIN)
      references LOCATION (LOCATION_NAME) on delete restrict on update restrict;

alter table TRAVEL add constraint FK_ORIGIN foreign key (DESTINATION)
      references LOCATION (LOCATION_NAME) on delete restrict on update restrict;

alter table TRAVEL add constraint FK_USED foreign key (TRANSPORTATION_NAME)
      references TRANSPORTATION (TRANSPORTATION_NAME) on delete restrict on update restrict;

