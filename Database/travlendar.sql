/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     09/10/2017 19:56:36                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists LOCATION;

drop table if exists PRIVATE_TRANSPORTATION;

drop table if exists PRIVATE_TRANSPORTATION_TRAVELING;

drop table if exists PUBLIC_TRANSPORTATION;

drop table if exists PUBLIC_TRANSPORTATION_TRAVELING;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_CODE           char(4) not null,
   LOCATION_CODE        char(4) not null,
   LOC_LOCATION_CODE    char(4),
   PUBLIC_TRANSPORTATION_CODE char(5),
   PRIVATE_TRANSPORTATION_CODE char(5),
   EVENT_NAME           varchar(40) not null,
   ARRIVAL_AT_LOCATION  datetime not null,
   EVENT_FINISHED       datetime not null,
   DESCRIPTION          varchar(200),
   DEPARTURE_TO_EVENT   datetime,
   primary key (EVENT_CODE)
);

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION
(
   LOCATION_CODE        char(4) not null,
   LOCATION_NAME        varchar(40) not null,
   primary key (LOCATION_CODE)
);

/*==============================================================*/
/* Table: PRIVATE_TRANSPORTATION                                */
/*==============================================================*/
create table PRIVATE_TRANSPORTATION
(
   PRIVATE_TRANSPORTATION_CODE char(5) not null,
   PRIVATE_TRANSPORTATION_NAME varchar(40) not null,
   primary key (PRIVATE_TRANSPORTATION_CODE)
);

/*==============================================================*/
/* Table: PRIVATE_TRANSPORTATION_TRAVELING                      */
/*==============================================================*/
create table PRIVATE_TRANSPORTATION_TRAVELING
(
   PRIVATE_TRANSPORTATION_TRAVELING_CODE char(5) not null,
   LOCATION_CODE        char(4) not null,
   LOC_LOCATION_CODE    char(4) not null,
   PRIVATE_TRANSPORTATION_CODE char(5) not null,
   TIME_ESTIMATION      time not null,
   primary key (PRIVATE_TRANSPORTATION_TRAVELING_CODE)
);

/*==============================================================*/
/* Table: PUBLIC_TRANSPORTATION                                 */
/*==============================================================*/
create table PUBLIC_TRANSPORTATION
(
   PUBLIC_TRANSPORTATION_CODE char(5) not null,
   PUBLIC_TRANSPORTATION_TYPE varchar(40) not null,
   PUBLIC_TRANSPORTATION_NAME varchar(40) not null,
   primary key (PUBLIC_TRANSPORTATION_CODE)
);

/*==============================================================*/
/* Table: PUBLIC_TRANSPORTATION_TRAVELING                       */
/*==============================================================*/
create table PUBLIC_TRANSPORTATION_TRAVELING
(
   PUBLIC_TRANSPORTATION_TRAVELING_CODE char(5) not null,
   LOCATION_CODE        char(4) not null,
   LOC_LOCATION_CODE    char(4) not null,
   PUBLIC_TRANSPORTATION_CODE char(5) not null,
   ARRIVAL_SCHEDULE     datetime not null,
   DEPARTURE_SCHEDULE   datetime not null,
   primary key (PUBLIC_TRANSPORTATION_TRAVELING_CODE)
);

alter table EVENT add constraint FK_RELATIONSHIP_1 foreign key (LOCATION_CODE)
      references LOCATION (LOCATION_CODE) on delete restrict on update restrict;

alter table EVENT add constraint FK_RELATIONSHIP_10 foreign key (PUBLIC_TRANSPORTATION_CODE)
      references PUBLIC_TRANSPORTATION (PUBLIC_TRANSPORTATION_CODE) on delete restrict on update restrict;

alter table EVENT add constraint FK_RELATIONSHIP_14 foreign key (LOC_LOCATION_CODE)
      references LOCATION (LOCATION_CODE) on delete restrict on update restrict;

alter table EVENT add constraint FK_RELATIONSHIP_9 foreign key (PRIVATE_TRANSPORTATION_CODE)
      references PRIVATE_TRANSPORTATION (PRIVATE_TRANSPORTATION_CODE) on delete restrict on update restrict;

alter table PRIVATE_TRANSPORTATION_TRAVELING add constraint FK_RELATIONSHIP_15 foreign key (LOC_LOCATION_CODE)
      references LOCATION (LOCATION_CODE) on delete restrict on update restrict;

alter table PRIVATE_TRANSPORTATION_TRAVELING add constraint FK_RELATIONSHIP_16 foreign key (LOCATION_CODE)
      references LOCATION (LOCATION_CODE) on delete restrict on update restrict;

alter table PRIVATE_TRANSPORTATION_TRAVELING add constraint FK_RELATIONSHIP_8 foreign key (PRIVATE_TRANSPORTATION_CODE)
      references PRIVATE_TRANSPORTATION (PRIVATE_TRANSPORTATION_CODE) on delete restrict on update restrict;

alter table PUBLIC_TRANSPORTATION_TRAVELING add constraint FK_RELATIONSHIP_11 foreign key (LOCATION_CODE)
      references LOCATION (LOCATION_CODE) on delete restrict on update restrict;

alter table PUBLIC_TRANSPORTATION_TRAVELING add constraint FK_RELATIONSHIP_12 foreign key (PUBLIC_TRANSPORTATION_CODE)
      references PUBLIC_TRANSPORTATION (PUBLIC_TRANSPORTATION_CODE) on delete restrict on update restrict;

alter table PUBLIC_TRANSPORTATION_TRAVELING add constraint FK_RELATIONSHIP_13 foreign key (LOC_LOCATION_CODE)
      references LOCATION (LOCATION_CODE) on delete restrict on update restrict;

