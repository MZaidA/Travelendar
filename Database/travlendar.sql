/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     05/12/2017 11:10:53                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists LOCATION;

drop table if exists TRANSPORTATION;

drop table if exists TRAVELING;

drop table if exists USER;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null auto_increment,
   EMAIL                varchar(40) not null,
   TRANSPORTATION_NAME  varchar(20) not null,
   ORIGIN               varchar(150) not null,
   DESTINATION          varchar(150) not null,
   EVENT_NAME           varchar(30) not null,
   primary key (EVENT_ID)
)
auto_increment = 1;

/*==============================================================*/
/* Table: LOCATION                                              */
/*==============================================================*/
create table LOCATION
(
   LOCATION_NAME        varchar(150) not null,
   primary key (LOCATION_NAME)
);

/*==============================================================*/
/* Table: TRANSPORTATION                                        */
/*==============================================================*/
create table TRANSPORTATION
(
   TRANSPORTATION_NAME  varchar(20) not null,
   TRAVEL_MODE          varchar(10) not null,
   AVOID_TOLLS          bool,
   primary key (TRANSPORTATION_NAME)
);

/*==============================================================*/
/* Table: TRAVELING                                             */
/*==============================================================*/
create table TRAVELING
(
   TRANSPORTATION_NAME  varchar(20) not null,
   ORIGIN               varchar(150) not null,
   DESTINATION          varchar(150) not null,
   DEPARTURE_TIME       datetime not null,
   ARRIVAL_TIME         datetime not null,
   EVENT_END            datetime not null,
   primary key (TRANSPORTATION_NAME, ORIGIN, DESTINATION)
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

alter table EVENT add constraint FK_RELATIONSHIP_5 foreign key (TRANSPORTATION_NAME, ORIGIN, DESTINATION)
      references TRAVELING (TRANSPORTATION_NAME, ORIGIN, DESTINATION) on delete restrict on update restrict;

alter table TRAVELING add constraint FK_DESTINATION foreign key (DESTINATION)
      references LOCATION (LOCATION_NAME) on delete restrict on update restrict;

alter table TRAVELING add constraint FK_ORIGIN foreign key (ORIGIN)
      references LOCATION (LOCATION_NAME) on delete restrict on update restrict;

alter table TRAVELING add constraint FK_USED foreign key (TRANSPORTATION_NAME)
      references TRANSPORTATION (TRANSPORTATION_NAME) on delete restrict on update restrict;

