/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     22/11/2017 08:36:25                          */
/*==============================================================*/


drop table if exists EVENT;

drop table if exists USER;

/*==============================================================*/
/* Table: EVENT                                                 */
/*==============================================================*/
create table EVENT
(
   EVENT_ID             int not null auto_increment,
   EMAIL                varchar(40) not null,
   EVENT_NAME           varchar(40) not null,
   NAME_ORIGIN          varchar(40) not null,
   LAT_ORIGIN           float not null,
   LNG_ORIGIN           float not null,
   NAME_DESTINATION     varchar(40) not null,
   LAT_DESTINATION      float not null,
   LNG_DESTINATION      float not null,
   ARRIVAL_TIME         datetime not null,
   EVENT_END            datetime not null,
   DEPARTURE_TIME       datetime not null,
   TRAVEL_MODE          varchar(10) not null,
   PRIVATE_TRANSPORT_TYPE varchar(20),
   AVOID_TOLLS          bool,
   TRANSIT_MODE         varchar(10),
   PUBLIC_TRANSPORT_TYPE varchar(20),
   PUBLIC_TRANSPORT_NAME varchar(40),
   primary key (EVENT_ID)
)
auto_increment = 1;

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   EMAIL                varchar(40) not null,
   USER_NAME            varchar(40) not null,
   PASSWORD             varchar(20) not null,
   primary key (EMAIL)
);

alter table EVENT add constraint FK_HAS foreign key (EMAIL)
      references USER (EMAIL) on delete restrict on update restrict;

